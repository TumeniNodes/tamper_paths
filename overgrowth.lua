--===============================================================================
-- [MOD]Overgrowth[mod]overgrowth [Ver. 1.0] Copyright (C) 2015-2026 Tumeninodes
--===============================================================================

local overgrowth_shapes = {
	corner = {
		{-0.5, -0.5625, 0.4375, -0.375, -0.5, 0.5},
		{-0.5, -0.5625, 0.3125, -0.4375, -0.5, 0.4375},
		{-0.5, -0.5625, 0.25, -0.375, -0.5, 0.3125},
		{-0.5, -0.5625, 0.0625, -0.4375, -0.5, 0.1875},
		{-0.5, -0.5625, -0.0625, -0.375, -0.5, 0},
		{-0.5, -0.5625, -0.125, -0.4375, -0.5, -0.0625},
		{-0.5, -0.5625, -0.25, -0.375, -0.5, -0.125},
		{-0.5, -0.5625, -0.5, -0.4375, -0.5, -0.3125},
		{-0.4375, -0.5625, -0.5, -0.3125, -0.5, -0.4375},
		{-0.3125, -0.5625, -0.5, -0.25, -0.5, -0.375},
		{-0.1875, -0.5625, -0.5, -0.0625, -0.5, -0.4375},
		{0, -0.5625, -0.5, 0.0625, -0.5, -0.375},
		{0.0625, -0.5625, -0.5, 0.125, -0.5, -0.4375},
		{0.125, -0.5625, -0.5, 0.25, -0.5, -0.375},
		{0.3125, -0.5625, -0.5, 0.5, -0.5, -0.4375},
		{0.4375, -0.5625, -0.4375, 0.5, -0.5, -0.375},
	},

	edge = {
		{-0.5, -0.5625, -0.5, -0.4375, -0.5, -0.375},
		{-0.4375, -0.5625, -0.5, -0.3125, -0.5, -0.4375},
		{-0.3125, -0.5625, -0.5, -0.25, -0.5, -0.375},
		{-0.1875, -0.5625, -0.5, -0.0625, -0.5, -0.4375},
		{0, -0.5625, -0.5, 0.0625, -0.5, -0.375},
		{0.0625, -0.5625, -0.5, 0.125, -0.5, -0.4375},
		{0.125, -0.5625, -0.5, 0.25, -0.5, -0.375},
		{0.3125, -0.5625, -0.5, 0.5, -0.5, -0.4375},
		{0.4375, -0.5625, -0.4375, 0.5, -0.5, -0.375},
	},

	["end"] = {
		{-0.5, -0.5625, 0.4375, -0.375, -0.5, 0.5},
		{-0.5, -0.5625, 0.3125, -0.4375, -0.5, 0.4375},
		{-0.5, -0.5625, 0.25, -0.375, -0.5, 0.3125},
		{-0.5, -0.5625, 0.0625, -0.4375, -0.5, 0.1875},
		{-0.5, -0.5625, -0.0625, -0.375, -0.5, 0},
		{-0.5, -0.5625, -0.125, -0.4375, -0.5, -0.0625},
		{-0.5, -0.5625, -0.25, -0.375, -0.5, -0.125},
		{-0.5, -0.5625, -0.5, -0.4375, -0.5, -0.3125},
		{-0.4375, -0.5625, -0.5, -0.3125, -0.5, -0.4375},
		{-0.3125, -0.5625, -0.5, -0.25, -0.5, -0.375},
		{-0.1875, -0.5625, -0.5, -0.0625, -0.5, -0.4375},
		{0, -0.5625, -0.5, 0.0625, -0.5, -0.375},
		{0.0625, -0.5625, -0.5, 0.125, -0.5, -0.4375},
		{0.125, -0.5625, -0.5, 0.25, -0.5, -0.375},
		{0.3125, -0.5625, -0.5, 0.5, -0.5, -0.4375},
		{0.4375, -0.5625, -0.4375, 0.5, -0.5, -0.3125},
		{0.375, -0.5625, -0.3125, 0.5, -0.5, -0.25},
		{0.4375, -0.5625, -0.1875, 0.5, -0.5, -0.0625},
		{0.375, -0.5625, 0, 0.5, -0.5, 0.0625},
		{0.4375, -0.5625, 0.0625, 0.5, -0.5, 0.125},
		{0.375, -0.5625, 0.125, 0.5, -0.5, 0.25},
		{0.4375, -0.5625, 0.3125, 0.5, -0.5, 0.5},
		{0.375, -0.5625, 0.4375, 0.4375, -0.5, 0.5},
	},

	pass = {
		{-0.5, -0.5625, 0.4375, -0.375, -0.5, 0.5},
		{-0.5, -0.5625, 0.3125, -0.4375, -0.5, 0.4375},
		{-0.5, -0.5625, 0.25, -0.375, -0.5, 0.3125},
		{-0.5, -0.5625, 0.0625, -0.4375, -0.5, 0.1875},
		{-0.5, -0.5625, -0.0625, -0.375, -0.5, 0},
		{-0.5, -0.5625, -0.125, -0.4375, -0.5, -0.0625},
		{-0.5, -0.5625, -0.25, -0.375, -0.5, -0.125},
		{-0.5, -0.5625, -0.5, -0.4375, -0.5, -0.3125},
		{-0.4375, -0.5625, -0.5, -0.375, -0.5, -0.4375},
		{0.375, -0.5625, -0.5, 0.5, -0.5, -0.4375},
		{0.4375, -0.5625, -0.4375, 0.5, -0.5, -0.3125},
		{0.375, -0.5625, -0.3125, 0.5, -0.5, -0.25},
		{0.4375, -0.5625, -0.1875, 0.5, -0.5, -0.0625},
		{0.375, -0.5625, 0, 0.5, -0.5, 0.0625},
		{0.4375, -0.5625, 0.0625, 0.5, -0.5, 0.125},
		{0.375, -0.5625, 0.125, 0.5, -0.5, 0.25},
		{0.4375, -0.5625, 0.3125, 0.5, -0.5, 0.5},
		{0.375, -0.5625, 0.4375, 0.4375, -0.5, 0.5},
	},

	single = {
		{-0.5, -0.5625, 0.4375, -0.3125, -0.5, 0.5},
		{-0.5, -0.5625, 0.3125, -0.4375, -0.5, 0.4375},
		{-0.5, -0.5625, 0.25, -0.375, -0.5, 0.3125},
		{-0.5, -0.5625, 0.0625, -0.4375, -0.5, 0.1875},
		{-0.5, -0.5625, -0.0625, -0.375, -0.5, 0},
		{-0.5, -0.5625, -0.125, -0.4375, -0.5, -0.0625},
		{-0.5, -0.5625, -0.25, -0.375, -0.5, -0.125},
		{-0.5, -0.5625, -0.5, -0.4375, -0.5, -0.3125},
		{-0.4375, -0.5625, -0.5, -0.3125, -0.5, -0.4375},
		{-0.3125, -0.5625, -0.5, -0.25, -0.5, -0.375},
		{-0.1875, -0.5625, -0.5, -0.0625, -0.5, -0.4375},
		{0, -0.5625, -0.5, 0.0625, -0.5, -0.375},
		{0.0625, -0.5625, -0.5, 0.125, -0.5, -0.4375},
		{0.125, -0.5625, -0.5, 0.25, -0.5, -0.375},
		{0.3125, -0.5625, -0.5, 0.5, -0.5, -0.4375},
		{0.4375, -0.5625, -0.4375, 0.5, -0.5, -0.3125},
		{0.375, -0.5625, -0.3125, 0.5, -0.5, -0.25},
		{0.4375, -0.5625, -0.1875, 0.5, -0.5, -0.0625},
		{0.375, -0.5625, 0, 0.5, -0.5, 0.0625},
		{0.4375, -0.5625, 0.0625, 0.5, -0.5, 0.125},
		{0.375, -0.5625, 0.125, 0.5, -0.5, 0.25},
		{0.4375, -0.5625, 0.3125, 0.5, -0.5, 0.5},
		{0.3125, -0.5625, 0.4375, 0.4375, -0.5, 0.5},
		{0.25, -0.5625, 0.375, 0.3125, -0.5, 0.5},
		{0.0625, -0.5625, 0.4375, 0.1875, -0.5, 0.5},
		{-0.0625, -0.5625, 0.375, 0, -0.5, 0.5},
		{-0.125, -0.5625, 0.4375, -0.0625, -0.5, 0.5},
		{-0.25, -0.5625, 0.375, -0.125, -0.5, 0.5},
	}
}

local material_registry_list = {}

local function register_overgrowth_material(modname, subname, tiles, groups, sounds, recipe_source)
	table.insert(material_registry_list, {
		modname       = modname,
		subname       = subname,
		tiles         = tiles,
		groups        = groups,
		sounds        = sounds,
		recipe_source = recipe_source
	})
end


-- --- OVERGROWTH MATERIALS ---
register_overgrowth_material(
	"tamper_paths", "grass",
	{"default_grass.png"},
	{snappy = 3, leaves = 1},
	default.node_sound_leaves_defaults(),
	"default:dirt_with_grass")

register_overgrowth_material(
	"tamper_paths", "coniferous_litter",
	{"default_coniferous_litter.png"},
	{snappy = 3, leaves = 1},
	default.node_sound_leaves_defaults(),
	"default:dirt_with_coniferous_litter")

register_overgrowth_material(
	"tamper_paths", "dry_grass",
	{"default_dry_grass.png"},
	{snappy = 3, leaves = 1},
	default.node_sound_leaves_defaults(),
	"default:dirt_with_dry_grass")

register_overgrowth_material(
	"tamper_paths", "rainforest_litter",
	{"default_rainforest_litter.png"},
	{snappy = 3, leaves = 1},
	default.node_sound_leaves_defaults(),
	"default:dirt_with_rainforest_litter")

register_overgrowth_material(
	"tamper_paths", "snow",
	{"default_snow.png"},
	{crumbly = 3, snowy = 1},
	default.node_sound_snow_defaults(),
	"default:dirt_with_snow")

register_overgrowth_material(
	"tamper_paths", "permafrost",
	{"default_permafrost.png"},
	{crumbly = 3},
	default.node_sound_dirt_defaults(),
	"default:permafrost_with_moss")

register_overgrowth_material(
	"tamper_paths", "dirt",
	{"default_dirt.png"},
	{crumbly = 3},
	default.node_sound_dirt_defaults(),
	"default:dirt")

register_overgrowth_material(
	"tamper_paths", "gravel",
	{"default_gravel.png"},
	{crumbly = 2},
	default.node_sound_gravel_defaults(),
	"default:gravel")

register_overgrowth_material(
	"tamper_paths", "sand",
	{"default_sand.png"},
	{crumbly = 3, sand = 1},
	default.node_sound_sand_defaults(),
	"default:sand")

register_overgrowth_material(
	"tamper_paths", "desert_sand",
	{"default_desert_sand.png"},
	{crumbly = 3, sand = 1},
	default.node_sound_sand_defaults(),
	"default:desert_sand")

register_overgrowth_material(
	"tamper_paths", "silver_sand",
	{"default_silver_sand.png"},
	{crumbly = 3, sand = 1},
	default.node_sound_sand_defaults(),
	"default:silver_sand")


for _, entry in ipairs(material_registry_list) do
	for shape_id, coordinates in pairs(overgrowth_shapes) do

		local clean_sub = entry.subname:gsub("_", " "):gsub("(%a)([%w]*)", function(f, r) return f:upper() .. r:lower() end)
		local clean_shape = shape_id:gsub("^%l", string.upper)
		local display_name = clean_sub .. " " .. clean_shape

		local operational_groups = table.copy(entry.groups or {})
		operational_groups.attached_node = 1

		minetest.register_node(entry.modname .. ":" .. entry.subname .. "_" .. shape_id, {
			description = display_name,
			tiles = entry.tiles,
			sounds = entry.sounds,
			groups = operational_groups,
			paramtype = "light",
			sunlight_propagates = true,
			paramtype2 = "facedir",
			is_ground_content = false,
			drawtype = "nodebox",

			node_box = {
				type = "fixed",
				fixed = coordinates
			},

			selection_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5625, -0.5, 0.5, -0.4375, 0.5},
				}
			},

			on_place = function(itemstack, placer, pointed_thing)
				if pointed_thing.type ~= "node" then return itemstack end

				local pos = pointed_thing.under
				local node = minetest.get_node(pos)
				local def = minetest.registered_nodes[node.name]

				if def and def.buildable_to then
				else
					pos = pointed_thing.above
					node = minetest.get_node(pos)
					def = minetest.registered_nodes[node.name]
					if not def or not def.buildable_to then
						return itemstack
					end
				end

				local dir = placer:get_look_dir()
				local facedir = minetest.dir_to_facedir(dir)

				minetest.set_node(pos, {name = itemstack:get_name(), param2 = facedir})

				if entry.sounds and entry.sounds.place then
					minetest.sound_play(entry.sounds.place, {pos = pos, gain = 1.0}, true)
				end

				if not minetest.settings:get_bool("creative_mode") then
					itemstack:take_item()
				end

				return itemstack
			end,

			on_rotate = function(pos, node, user, mode, new_param2)
				if screwdriver and screwdriver.rotate_simple then
					return screwdriver.rotate_simple(pos, node, user, mode, new_param2)
				end
				return false
			end,
		})
	end

	if entry.recipe_source and minetest.registered_nodes[entry.recipe_source] then

		minetest.register_craft({
			output = entry.modname .. ":" .. entry.subname .. "_single 4",
			recipe = {
				{ entry.recipe_source }
			}
		})

		local shape_loop = {"single", "edge", "corner", "pass", "end"}
		for i, current_shape in ipairs(shape_loop) do
			local next_shape = shape_loop[i == #shape_loop and 1 or i + 1]

			minetest.register_craft({
				type = "shapeless",
				output = entry.modname .. ":" .. entry.subname .. "_" .. next_shape,
				recipe = { entry.modname .. ":" .. entry.subname .. "_" .. current_shape }
			})
		end
	end
end
