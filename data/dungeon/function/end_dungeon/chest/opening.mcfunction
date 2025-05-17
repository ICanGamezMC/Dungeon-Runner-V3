#This is to set up player camera to chest and play animation
execute as @s[scores={Timer=1..290}] run tp @a[tag=In_Dungeon] @e[tag=Chest_Camera,limit=1,sort=nearest]
tp @s[scores={Timer=..180}] ~ ~ ~ ~ ~-.5
execute as @s[scores={Timer=50..290}] run particle minecraft:trial_spawner_detection ~ ~ ~ 1 1 1 0 2
#This is for the timer 
scoreboard players add @s Timer 1


#This is to reset world to normal
execute as @s[scores={Timer=300}] run time set noon
execute as @s[scores={Timer=300}] run weather clear 99999d


#This is to tp players to spawn again
execute as @s[scores={Timer=291}] run tag @a add Out_Dungeon
execute as @s[scores={Timer=291}] run tag @a remove In_Dungeon
execute as @s[scores={Timer=291}] run tp @a[tag=Out_Dungeon] 58 -35 -29
#This is for resetting the animation
tp @s[scores={Timer=310..}] ^ ^ ^ -45 0