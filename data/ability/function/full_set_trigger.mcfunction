

execute store result score @s Full_Set_Bonus if items entity @s armor.* *[minecraft:custom_data~{Ability:1b}]
execute if score @s Full_Set_Bonus matches 4 if items entity @s armor.* *[minecraft:custom_data~{Ability:1b}] if block ~ ~-1 ~ grass_block run effect give @s speed 3 0 true

