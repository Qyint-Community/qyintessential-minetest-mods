-- Rotten Flesh to Leather --
minetest.register_craft({
    type = "cooking",
    output = "mcl_mobitems:leather 1",
    recipe = "mcl_mobitems:rotten_flesh",
    cooktime = 10,
})

-- Slimeballs to Glue --
minetest.register_craft({
    type = "shaped",
    output = "mesecons_materials:glue 4",
    recipe = {
        {"mcl_mobitems:slimeball"}
    }
})
-- Feathers to Glider --
minetest.register_craft({
    type = "shaped",
    output = "glider:glider 1",
    recipe = {
        {"mcl_mobitems:feather", "mcl_mobitems:feather", "mcl_mobitems:feather"},
        {"mcl_mobitems:feather", "mcl_mobitems:feather", "mcl_mobitems:feather"},
        {"mcl_core:stick", "mcl_core:stick", "mcl_core:stick"}
    }
})