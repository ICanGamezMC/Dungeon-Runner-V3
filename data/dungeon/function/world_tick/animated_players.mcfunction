
scoreboard players add @e[tag=ICanGamez] Timer 1
execute as @e[tag=ICanGamez,scores={Timer=1}] run data modify entity @s item.components.minecraft:item_model set value "dungeon:custom_item/special/players/1/icg"
execute as @e[tag=ICanGamez,scores={Timer=20}] run data modify entity @s item.components.minecraft:item_model set value "dungeon:custom_item/special/players/2/icg"
execute as @e[tag=ICanGamez,scores={Timer=40}] run data modify entity @s item.components.minecraft:item_model set value "dungeon:custom_item/special/players/3/icg"
execute as @e[tag=ICanGamez,scores={Timer=60..}] run scoreboard players set @s Timer 0



scoreboard players add @e[tag=ParkerEpic4444] Timer 1
execute as @e[tag=ParkerEpic4444,scores={Timer=1}] run data modify entity @s item.components.minecraft:item_model set value "dungeon:custom_item/special/players/1/pe"
execute as @e[tag=ParkerEpic4444,scores={Timer=40}] run data modify entity @s item.components.minecraft:item_model set value "dungeon:custom_item/special/players/2/pe"
execute as @e[tag=ParkerEpic4444,scores={Timer=70..}] run scoreboard players set @s Timer 0

scoreboard players add @e[tag=Torrezx] Timer 1
execute as @e[tag=Torrezx,scores={Timer=1}] run data modify entity @s item.components.minecraft:item_model set value "dungeon:custom_item/special/players/1/tor"
execute as @e[tag=Torrezx,scores={Timer=28}] run data modify entity @s item.components.minecraft:item_model set value "dungeon:custom_item/special/players/2/tor"
execute as @e[tag=Torrezx,scores={Timer=44..}] run scoreboard players set @s Timer 0