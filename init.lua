
minetest.register_craftitem("cxp_food:donut", {
    description = "CodeXP's donut",
    inventory_image = "donut.png",
    on_use = function(itemstack, user, pointed_thing)
        local hp_change = 10
        local replace_with_item = nil

        -- Support for hunger mods using minetest.register_on_item_eat
        for _ , callback in pairs(minetest.registered_on_item_eats) do
            local result = callback(hp_change, replace_with_item, itemstack, user, pointed_thing)
            if result then
                return result
            end
        end

        if itemstack:take_item() ~= nil then
            user:set_hp(user:get_hp() + hp_change)
        end

        return itemstack
    end
})

print("cxp_food is loaded")

