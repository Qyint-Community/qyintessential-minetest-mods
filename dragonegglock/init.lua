minetest.register_node("qyintessential_dragonegglock:dragon_egg", {
    description = "Locked Dragon Egg",
    tiles = {
            "mcl_end_dragon_egg.png",
            "mcl_end_dragon_egg.png",
            "mcl_end_dragon_egg.png",
            "mcl_end_dragon_egg.png",
            "mcl_end_dragon_egg.png",
            "mcl_end_dragon_egg.png",
    },
    drawtype = "nodebox",
    is_ground_content = false,
    paramtype = "light",
    light_source = 1,
    node_box = {
            type = "fixed",
            fixed = {
                    {-0.375, -0.5, -0.375, 0.375, -0.4375, 0.375},
                    {-0.5, -0.4375, -0.5, 0.5, -0.1875, 0.5},
                    {-0.4375, -0.1875, -0.4375, 0.4375, 0, 0.4375},
                    {-0.375, 0, -0.375, 0.375, 0.125, 0.375},
                    {-0.3125, 0.125, -0.3125, 0.3125, 0.25, 0.3125},
                    {-0.25, 0.25, -0.25, 0.25, 0.3125, 0.25},
                    {-0.1875, 0.3125, -0.1875, 0.1875, 0.375, 0.1875},
                    {-0.125, 0.375, -0.125, 0.125, 0.4375, 0.125},
                    {-0.0625, 0.4375, -0.0625, 0.0625, 0.5, 0.0625},
            }
    },
    selection_box = {
            type = "regular",
    },
    groups = {handy=1, deco_block = 1, not_in_creative_inventory = 1, dig_by_piston = 1 },
    --sounds = mcl_sounds.node_sound_stone_defaults(),
    _mcl_blast_resistance = 9,
    _mcl_hardness = 3,
})

minetest.register_craft({
    type = "shaped",
    output = "qyintessential_dragonegglock:dragon_egg",
    recipe = {
        {"mcl_end:dragon_egg"}
    }
})
minetest.register_craft({
    type = "shaped",
    output = "mcl_end:dragon_egg",
    recipe = {
        {"qyintessential_dragonegglock:dragon_egg"}
    }
})