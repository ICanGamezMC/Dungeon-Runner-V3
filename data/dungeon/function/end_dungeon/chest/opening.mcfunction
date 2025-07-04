#This is for a tutorial ppl
execute as @s[scores={Timer=1}] run stopsound @a
execute as @s[scores={Timer=1}] run effect clear @a
execute as @s[scores={Timer=1}] run kill @e[tag=clear3]
execute as @s[scores={Timer=1}] run execute if entity @a[tag=Tutorial] run tellraw @s {"text":"Congrats on beating the tutorial","bold":true,"color":"dark_blue"}
execute as @s[scores={Timer=1}] run execute if entity @a[tag=Tutorial] run scoreboard players set @s Step 0
execute as @s[scores={Timer=2}] run execute if entity @a[tag=Tutorial] run tag @a remove Tutorial

#This is to set up player camera to chest and play animation
execute as @s[scores={Timer=1}] run clear @a *[minecraft:custom_data~{Dungeon:1b}]
execute as @s[scores={Timer=1..290}] run tp @a[tag=In_Dungeon] @e[tag=Chest_Camera,limit=1,sort=nearest]
tp @s[scores={Timer=..180}] ~ ~ ~ ~ ~-.5
execute as @s[scores={Timer=50..290}] run particle minecraft:trial_spawner_detection ~ ~ ~ 1 1 1 0 2
execute as @s[scores={Timer=1}] run playsound minecraft:entity.polar_bear.ambient_baby record @a ~ ~ ~ 100 1 1
#This is for the timer 
scoreboard players add @s Timer 1

execute as @s[scores={Timer=50..290}] run function dungeon:end_dungeon/unlock

#This is to reset world to normal
execute as @s[scores={Timer=300}] run time set noon
execute as @s[scores={Timer=300}] run weather clear 99999d

#this is for loot
execute as @s[scores={Timer=60}] as @a at @s run function dungeon:end_dungeon/chest/loot_table with storage file:loot


#This is to tp players to spawn again
execute as @s[scores={Timer=291}] run tag @a add Out_Dungeon
execute as @s[scores={Timer=291}] run tag @a remove In_Dungeon
execute as @s[scores={Timer=291}] run playsound minecraft:music_disc.blocks record @a ~ ~ ~ 1000 1 1
execute as @s[scores={Timer=291}] run tp @a[tag=Out_Dungeon] 58 -35 -29
#This is for resetting the animation
tp @s[scores={Timer=310..}] ^ ^ ^ -45 0