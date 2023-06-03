-- Craftitems

minetest.register_craftitem("new_picks:stone_stick",{
         description = "Stone Stick",
         inventory_image = "sstick.png",
})

minetest.register_craftitem("new_picks:irostone",{
          description = "irostone ingot",
          inventory_image = "is.png",
})

minetest.register_craftitem("new_picks:mesostone",{
          description = "Stone infused mese",
          inventory_image = "mesostone.png",
})

--Pickaxes

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

minetest.register_tool("new_picks:irostone_ps", {
              description = "Irostone pickaxe",
              inventory_image = "irostone_ps.png",
              tool_capabilities = {
                         full_punch_interval = 1.0,
                         max_drop_level = 1,
                         groupcaps={
                                          cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=120, maxlevel=3},
                         },
                         damage_groups = {fleshy=4},
              },
              sound = {breaks = "default_tool_breaks"},
              groups = {pickaxe = 1}
})

minetest.register_tool("new_picks:mesostone_ps", {
              description = "Mese infused stone pickaxe",
              inventory_image = "mesostoneps.png",
              tool_capabilities = {
                         full_punch_interval = 1.0,
                         max_drop_level = 1,
                         groupcaps={
                                          cracky = {times={[1]=1.9, [2]=0.6, [3]=0.3}, uses=200, maxlevel=4},
                         },
                         damage_groups = {fleshy=4},
              },
              sound = {breaks = "default_tool_breaks"},
              groups = {pickaxe = 1}
})

--Shovels

minetest.register_tool("new_picks:stone_ss",{
               description = "Stone shovel with a stone stick",
               inventory_image = "stones.png",
               tool_capabilities = {
                           full_punch_interval = 1.0,
                           max_drop_level =1,
                           groupcaps={
                                           crumbly = {times={[1]=6.90, [2]=1.80, [3]=0.20}, uses=100, maxlevel=2},
                           },
                           damage_groups = {fleshy=4},
              },
              sound = {breaks = "default_tool_breaks"},
              groups = {shovel=1}
})

minetest.register_tool("new_picks:irostone_ss",{
               description = "Irostone shovel",
               inventory_image = "irostones.png",
               tool_capabilities = {
                           full_punch_interval = 1.9,
                           max_drop_level = 1,
                           groupcaps = {
                                           crumbly = {times={[1]=4.90, [2]=1.50, [3]=0.16}, uses=120, maxlevel=3},
                           },
                           damage_groups = {fleshy=4},
              },
              sound = {breaks = "default_tool_breaks"},
              groups = {shovel=1}
})

minetest.register_tool("new_picks:mesostone_ss",{
               description = "Mese Infused Stone Shovel",
               inventory_image = "mesostones.png",
               tool_capabilities = {
                           full_punch_interval = 1,
                           max_drop_level = 1,
                           groupcaps = {
                                             crumbly = {times = {[1] = 1.09, [2] = 0.9, [3] = 0.13}, uses = 200, maxlevel = 4},
                           },
                           damage_groups = {fleshy = 4},
              },
              sound = {breaks = "default_tool_breaks"},
              groups = {shovel = 1}
})
                                            
--Axe

minetest.register_tool("new_picks:stone_as",{
               description = "Stone axe with a stone stick",
               inventory_image = "stonea.png",
               tool_capabilities = {
                           full_punch_interval = 1.8,
                           max_drop_level = 1,
                           groupcaps={
                                            choppy = {times={[1]=2.0, [2]=1.6, [3]=0.2}, uses=100, maxlevel=2},
                            },
                            damage_groups = {fleshy=4},
               },
               sound = {breaks = "default_tool_breaks"},
               groups = {axe=1},
})

minetest.register_tool("new_picks:irostone_as",{
               description = "Irostone Axe",
               inventory_image = "irostone_as.png",
               tool_capabilities = {
                           full_punch_interval = 1.8,
                           max_drop_level = 1,
                           groupcaps={
                                            choppy = {times={[1]=1.0, [2]=0.9, [3]=0.1}, uses=120, maxlevel=3},
                            },
                            damage_groups = {fleshy=4},
               },
               sound = {breaks = "default_tool_breaks"},
               groups = {axe=1},
})

minetest.register_tool("new_picks:mesostone_as",{
               description = "Mese Infused Stone Axe",
               inventory_image = "mesostone_as.png",
               tool_capabilities = {
                           full_punch_interval = 1.8,
                           max_drop_level = 1,
                           groupcaps={
                                            choppy = {times={[1]=0.8, [2]=0.6, [3]=0.09}, uses=200, maxlevel=4},
                            },
                            damage_groups = {fleshy=4},
               },
               sound = {breaks = "default_tool_breaks"},
               groups = {axe=1},
})


--CRAFTING RECIPIES

--Materials

minetest.register_craft({
         output = "new_picks:stone_stick",
         recipe = {
                   {"", "default:cobble", ""},
                   {"", "default:cobble", ""},
                   {"", "default:cobble", ""},
                  }
})

minetest.register_craft({
          output = "new_picks:irostone 3",
          recipe = {
                      {"default:steel_ingot", "default:cobble", ""},
                    },
})

minetest.register_craft({
            output = "new_picks:mesostone 6",
             recipe = {
                         {"default:mese_crystal", "default:cobble", ""},
                        },
})

--Pickaxes

minetest.register_craft({
    output = "new_picks:stone_ps",
    recipe = {
               {"default:cobble", "default:cobble", "default:cobble"},
              {"", "new_picks:stone_stick", ""},
              {"", "new_picks:stone_stick", ""},
             }
})

minetest.register_craft({
           output = "new_picks:irostone_ps",
           recipe = {
                       {"new_picks:irostone", "new_picks:irostone", "new_picks:irostone"},
                       {"", "new_picks:stone_stick", ""},
                       {"", "new_picks:stone_stick", ""},
                      },
})

minetest.register_craft({
           output = "new_picks:mesostone_ps",
           recipe = {
                       {"new_picks:mesostone", "new_picks:mesostone", "new_picks:mesostone"},
                       {"", "new_picks:stone_stick", ""},
                       {"", "new_picks:stone_stick", ""},
                      },
})

--Shovel

minetest.register_craft({
     output = "new_picks:stone_ss",
     recipe = {
                    {"","default:cobble",""},
                    {"", "new_picks:stone_stick", ""},
                    {"", "new_picks:stone_stick", ""},
                  }
})

minetest.register_craft({
     output = "new_picks:irostone_ss",
     recipe = {
                    {"","new_picks:irostone",""},
                    {"", "new_picks:stone_stick", ""},
                    {"", "new_picks:stone_stick", ""},
                  }
})

minetest.register_craft({
     output = "new_picks:mesostone_ss",
     recipe = {
                    {"", "new_picks:mesostone",""},
                    {"", "new_picks:stone_stick", ""},
                    {"", "new_picks:stone_stick", ""},
                  }
})

--Axes

minetest.register_craft({
     output = "new_picks:stone_as",
     recipe = {
                    {"default:cobble","default:cobble",""},
                    {"default:cobble", "new_picks:stone_stick", ""},
                    {"", "new_picks:stone_stick", ""},
                  }
})

minetest.register_craft({
     output = "new_picks:irostone_as",
     recipe = {
                    {"new_picks:irostone","new_picks:irostone",""},
                    {"new_picks:irostone", "new_picks:stone_stick", ""},
                    {"", "new_picks:stone_stick", ""},
                  }
})

minetest.register_craft({
     output = "new_picks:mesostone_as",
     recipe = {
                    {"new_picks:mesostone","new_picks:mesostone",""},
                    {"new_picks:mesostone", "new_picks:stone_stick", ""},
                    {"", "new_picks:stone_stick", ""},
                  }
})

