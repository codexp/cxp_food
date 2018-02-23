
minetest.register_craftitem("cxp_food:donut", {
    description = "CodeXP's donut",
    inventory_image = "donut.png",
    on_use = minetest.item_eat(10)
})

minetest.register_craftitem("cxp_food:donut_apple", {
    description = "CodeXP's donut with apple",
    inventory_image = "donut_apple.png",
    on_use = minetest.item_eat(13)
})

minetest.register_craft({
    output = "cxp_food:donut 5",
    recipe = {
        {"", "farming:flour", ""},
        {"farming:flour", "", "farming:flour"},
        {"", "farming:flour", ""}
    }
})

minetest.register_craft({
    output = "cxp_food:donut_apple 5",
    recipe = {
        {"", "farming:flour", ""},
        {"farming:flour", "default:apple", "farming:flour"},
        {"", "farming:flour", ""}
    }
})

minetest.register_craft({
    type = "shapeless",
    output = "cxp_food:donut_apple 2",
    recipe = {"cxp_food:donut", "default:apple"}
})

print("cxp_food is loaded")

