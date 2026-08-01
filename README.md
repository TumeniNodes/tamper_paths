# Tamper Paths (ver. 0.9)

A mod for Luanti (Minetest) that allows players to create realistic, worn pathways using dedicated tamping tools.

## Configuration

You can customize how path textures behave either through the in-game Settings menu or directly via your configuration files.

### In-Game Menu
1. Go to the main Luanti menu screen.
2. Select **Settings** -> **All Settings** -> **Mods** -> **tamper_paths**.
3. Toggle the **Enable Path Variations** option on or off.

### Manual Configuration (`minetest.conf`)
If you are hosting a server or prefer manual file configuration, add the following line to your `minetest.conf` file:

```text
# Enable variable path textures and rotations (true = enabled, false = disabled)
tamper_paths.enable_variable_textures = false
```

*   **`true` (Default)**: Path nodes automatically apply random texture rotations and sequential visual variants.
*   **`false`**: Bypasses rotations and alternate layouts, locking paths to uniform, static base textures.

*Note: The `default_stone_block` node is intentionally hardcoded to remain uniform and static regardless of this setting.*

---
Copyright (C) 2015-2026 TumeniNodes
