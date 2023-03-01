minetest.register_craftitem("new_picks:stone_stick",{
         description = "Stone Stick",
         inventory_image = "sstick.png",
})

minetest.register_tool("new_picks:stone_ps", {
	description = "Stone Pickaxe With A Stone Stick",
	inventory_image = "stoneps.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[2]=3.0, [3]=1.10}, uses=100, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
         output = "new_picks:stone_stick ",
         recipe = {
                   {"", "default:cobble", ""},
                   {"", "default:cobble", ""},
                   {"", "default:cobble", ""},
                  }
})

minetest.register_craft({
    output = "new_picks:stone_ps",
    recipe = {
               {"default:cobble", "default:cobble", "default:cobble"},
              {"", "new_picks:stone_stick", ""},
              {"", "new_picks:stone_stick", ""},
             }
})