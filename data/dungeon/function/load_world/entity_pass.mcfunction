
execute as @e[tag=Chest_Top_End] run scoreboard players add count Step 1

execute if score count Step matches 3.. run kill @e[tag=Chest_Top_End,limit=1]
execute if score count Step matches 3.. run kill @e[tag=Chest_Bottom_End,limit=1]
execute if score count Step matches ..1 run tag @e[tag=Chest_Top_End] add LOOT_LOAD

scoreboard players set count Step 1