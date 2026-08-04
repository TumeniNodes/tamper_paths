# [MOD]Tamper Paths[mod]tamper_paths [Ver. 1.0]

A mod for Luanti (Minetest) that lets players make realistic, worn-down paths using specialized tamping tools. It also adds thin, placeable 3D overgrowth sheets to neatly blend road edges into the surrounding grass, sand, or snow.

## Main Features

*   **Sunken Paths:** Path blocks are built slightly lower than normal blocks (leaving a 1-pixel step down) to give roads a distinct, packed-down look.
*   **3D Overgrowth Sheets:** Players can craft and place thin borders (**Center, Pass, Corner, Ends, Edge**) directly on top of paths. These are separate items, meaning you can rotate them in any direction without messing up the brick or gravel textures underneath.
*   **Smart Texture Patterns:** Road blocks use map coordinates to decide which texture variant to show. This means if you break a path block and replace it later, it will always match the pattern of the blocks next to it.
*   **Screwdriver Support:** Works perfectly with the standard Minetest Game screwdriver so you can quickly spin overgrowth borders into place.

## Configuration

You can change how path textures look through the in-game Settings menu or by editing your config file.

### In-Game Menu
1. Go to the main Luanti menu.
2. Choose **Settings** -> **All Settings** -> **Mods** -> **tamper_paths**.
3. Toggle the **Enable Path Variations** option on or off.

### Manual Configuration (`minetest.conf`)
If you host a server or prefer manual files, add this line to your `minetest.conf`:

```text
# Enable variable path textures and rotations (true = enabled, false = disabled)
tamper_paths.enable_variable_textures = true
```

*   **`true` (Default)**: Path blocks automatically pick matching texture variations and rotations based on where they sit in the world.
*   **`false`**: Turns off variations, making paths look completely uniform and flat.

*Note: The Stone Block path is designed to stay completely uniform regardless of this setting.*

## Crafting & How it Works

### Tamping Tools
Craft a path tamper tool using two sticks and your chosen road material (Dirt, Cobble, Desert Cobble, Brick, Gravel, or Stone Block) stacked vertically. Right-clicking a normal block with the tool transforms it into a sunken path.

### Overgrowth Sheets
Putting a natural terrain block (like Dirt with Grass, Sand, or Snow) by itself in the crafting grid gives you **4 Overgrowth Sheets** (starting as the `Single` shape).

*   **Changing Shapes:** You can change the shape of a sheet at any time. Simply put an overgrowth sheet back into any crafting slot by itself to cycle through the available layouts: `Single` -> `Edge` -> `Corner` -> `Pass` -> `End` -> back to `Single`.

---
Copyright (C) 2015-2026 TumeniNodes
HEAD
## License

* **Code:** CC-BY-SA 4.0 (See LICENSE file)
* **Textures & Media:** CC-BY-SA 4.0 (See LICENSE file)

![Mod Pack Screenshot](https://raw.githubusercontent.com/TumeniNodes/tamper_paths/refs/heads/master/screenshot.png)

Licensed under CC-BY-SA 4.0 International
bf94f49 (add 3D overgrowth companion mod and all old source files for future use or collaboration)
