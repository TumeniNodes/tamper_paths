--===================================================================================
-- [MOD]Tamper Paths[mod]tamper_paths [Ver. 1.0] Copyright (C) 2015-2026 Tumeninodes
--===================================================================================
local enable_variants = minetest.settings:get_bool("tamper_paths.enable_variable_textures")

if enable_variants == nil then
    enable_variants = true
end

local tool_to_material = {
    dirt          = { node = "default:dirt",          variants = 4, rotate = true },
    gravel        = { node = "default:gravel",        variants = 4, rotate = true },
    cobble        = { node = "default:cobble",        variants = 4, rotate = false },
    desert_cobble = { node = "default:desert_cobble", variants = 4, rotate = false },
    brick         = { node = "default:brick",         variants = 4, rotate = false },
    stone_block   = { node = "default:stone_block",   variants = 1, rotate = false }
}

local path_mapping = {}

local rot_transforms = {
    "",
    "^[transformR90",
    "^[transformR180",
    "^[transformR270"
}

for tool_key, config in pairs(tool_to_material) do
    local base_node = config.node
    local def = minetest.registered_nodes[base_node]

    if def and def.tiles then
        local clean_id = base_node:gsub(":", "_")
        path_mapping[tool_key] = {}

        local primary_tile = ""
        if type(def.tiles) == "table" then
            primary_tile = def.tiles[1] or "unknown_node.png"
        else
            primary_tile = def.tiles
        end

        local total_loop_variants = config.variants
        if not enable_variants then
            total_loop_variants = 1
        end

        for v = 1, total_loop_variants do
            local path_node_name = "tamper_paths:path_" .. clean_id .. "_" .. v

            local expanded_tiles = {}
            for i = 1, 6 do
                if type(def.tiles) == "table" then
                    expanded_tiles[i] = def.tiles[i] or def.tiles[#def.tiles] or "unknown_node.png"
                else
                    expanded_tiles[i] = def.tiles
                end
            end

            if config.rotate and enable_variants then
                expanded_tiles[1] = primary_tile .. rot_transforms[v]
            else
                if v == 1 then
                    expanded_tiles[1] = "default_" .. tool_key .. ".png"
                else
                    expanded_tiles[1] = "default_" .. tool_key .. "_" .. v .. ".png"
                end
            end

            minetest.register_node(path_node_name, {
                description = (def.description or "Material") .. " Path",
                tiles = expanded_tiles,
                sounds = def.sounds or default.node_sound_stone_defaults(),
                drop = base_node,
                groups = {crumbly = 2, cracky = 3, attached_node = 1, not_in_creative_inventory = 1},
                paramtype2 = "facedir",
                drawtype = "nodebox",
                paramtype = "light",
                node_box = {
                    type = "fixed",
                    fixed = {-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
                },
                selection_box = {
                    type = "fixed",
                    fixed = {-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
                },
            })

            path_mapping[tool_key][v] = path_node_name
        end
    end
end

local function is_tampable(node_name)
    if node_name == "air" or node_name == "ignore" then return false end
    local def = minetest.registered_nodes[node_name]
    if not def then return false end
    if def.drawtype == "liquid" or def.drawtype == "flowingliquid" then return false end
    if def.diggable == false then return false end
    return true
end

-- REGISTER TAMPING TOOLS
local tools_config = {
    { id = "dirt",          display = "Dirt Path Tamper",        img = "tamper_paths_tool_dirt.png^[transformR90" },
    { id = "cobble",        display = "Cobble Path Tamper",      img = "tamper_paths_tool_cobble.png^[transformR90" },
    { id = "desert_cobble", display = "Desert Cobble Path Tamper", img = "tamper_paths_tool_desert_cobble.png^[transformR90" },
    { id = "brick",         display = "Brick Path Tamper",       img = "tamper_paths_tool_brick.png^[transformR90" },
    { id = "gravel",        display = "Gravel Path Tamper",      img = "tamper_paths_tool_gravel.png^[transformR90" },
    { id = "stone_block",   display = "Stone Block Path Tamper", img = "tamper_paths_tool_stone_block.png^[transformR90" }
}

for _, tool in ipairs(tools_config) do
    minetest.register_tool("tamper_paths:tamper_" .. tool.id, {
        description = tool.display,
        inventory_image = tool.img,
        liquids_pointable = false,

        on_place = function(itemstack, placer, pointed_thing)
            if pointed_thing.type ~= "node" then return itemstack end

            local pos = pointed_thing.under
            local clicked_node = minetest.get_node(pos)

            if is_tampable(clicked_node.name) then
                local material_variants = path_mapping[tool.id]
                local mat_config = tool_to_material[tool.id]

                if material_variants and mat_config then

                    local target_index = 1
                    if enable_variants and mat_config.variants > 1 then
                        local spatial_hash = math.sin(pos.x * 12.9898 + pos.y * 78.233 + pos.z * 43.121) * 43758.5453
                        target_index = math.floor((spatial_hash - math.floor(spatial_hash)) * mat_config.variants) + 1
                    end

                    local target_path_node = material_variants[target_index]

                    if target_path_node then
                        local path_def = minetest.registered_nodes[target_path_node]
                        if path_def and path_def.sounds and path_def.sounds.place then
                            minetest.sound_play(path_def.sounds.place, {pos = pos, gain = 1.0}, true)
                        end

                        local final_param2 = 0
                        if not mat_config.rotate then
                            local p_dir = placer:get_look_dir()
                            final_param2 = minetest.dir_to_facedir(p_dir)
                        end

                        minetest.set_node(pos, {
                            name = target_path_node,
                            param2 = final_param2
                        })

                        local p_name = placer:get_player_name()
                        local is_creative = minetest.check_player_privs(p_name, {creative = true})

                        if not is_creative and not minetest.settings:get_bool("creative_mode") then
                            itemstack:add_wear(65535 / 50)
                        end

                        return itemstack
                    end
                end
            end

            return itemstack
        end,
    })
end

minetest.register_craft({
    output = "tamper_paths:tamper_dirt",
    recipe = {
        {"", "default:stick", ""},
        {"", "default:stick", ""},
        {"", "default:dirt",  ""}
    }
})

minetest.register_craft({
    output = "tamper_paths:tamper_cobble",
    recipe = {
        {"", "default:stick",  ""},
        {"", "default:stick",  ""},
        {"", "default:cobble", ""}
    }
})

minetest.register_craft({
    output = "tamper_paths:tamper_desert_cobble",
    recipe = {
        {"", "default:stick",  ""},
        {"", "default:stick",  ""},
        {"", "default:desert_cobble", ""}
    }
})

minetest.register_craft({
    output = "tamper_paths:tamper_brick",
    recipe = {
        {"", "default:stick", ""},
        {"", "default:stick", ""},
        {"", "default:brick", ""}
    }
})

minetest.register_craft({
    output = "tamper_paths:tamper_gravel",
    recipe = {
        {"", "default:stick",  ""},
        {"", "default:stick",  ""},
        {"", "default:gravel", ""}
    }
})

minetest.register_craft({
    output = "tamper_paths:tamper_stone_block",
    recipe = {
        {"", "default:stick",  ""},
        {"", "default:stick",  ""},
        {"", "default:stone_block", ""}
    }
})
