item modify entity @s weapon.mainhand ne:remove_1

#setblock ~ ~ ~ barrier

summon interaction ~ ~ ~ {height:1.01,width:1.02,Passengers:[{id:"block_display",block_state:{Name:"enchanting_table"},transformation:[10,0,0,-5,0,6,0,0,0,0,10,-5,0,0,0,10]},{id:"block_display",block_state:{Name:"end_portal_frame"},transformation:[8,0,0,-4,0,8,0,0,0,0,8,-4,0,0,0,10],Passengers:[{id:"block_display",block_state:{Name:"end_rod",Properties:{"facing":"up"}},Tags:["ne_table_deco_1"],transformation:[1,0,0,-2,0,1,0,2,0,0,1,-2,0,0,0,3]},{id:"block_display",block_state:{Name:"end_rod",Properties:{"facing":"up"}},Tags:["ne_table_deco_2"],transformation:[1,0,0,1,0,1,0,3,0,0,1,1,0,0,0,3]},{id:"item_display",item:{id:"enchanted_book"},Tags:["ne_table_enchstore"],transformation:[1,0,0,0,0,1,0,1,0,0,1,0,0,0,0,3]},{id:"item_display",item:{id:"air",count:1},Tags:["ne_table_item"],transformation:[1,0,0,0,0,1,0,2,0,0,1,0,0,0,0,2],Passengers:[{id:"text_display",Tags:["ne_cost"],text:'""',background:0,billboard:"vertical",transformation:[2,0,0,0,0,2,0,5,0,0,2,0,0,0,0,4]}]}]}],Tags:["ne_table"]}

playsound block.stone.place block @a ~ ~ ~ 1 1
playsound block.enchantment_table.use block @a ~ ~ ~ 1 0.5