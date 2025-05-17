

# This is for keeping the players stats alive and running, also keep the player aline with custom health
execute as @a as @s run function dungeon:player_stats/tick
function ability:trigger_ability
#This is generation for v1 gen, works on the last step of loading rooms
execute if entity @e[tag=load_rooms] run function dgen:generation/base_gen/v1/repeat_place


#This is for players who die or get out of map ;)
execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run tag @s add Out_Dungeon
execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run tag @s remove In_Dungeon
execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run tp @s 58 -35 -29

#This is for the world ticks, lots of if cases to stop lag!
function dungeon:world_tick/tick

#This is for spawning mobs
function dungeon:mobs/spawning/tick

#This is for selecting the level
execute as @e[type=minecraft:interaction,nbt={interaction:{}}] at @s run function dungeon:load_level/interactions

#This is for starting a dungeon
execute at @e[tag=Entrance] if entity @a[distance=..5] run function dungeon:start_dungeon/start

##
#  This is for dungeon intro 
## 
#This is for 
execute as @e[tag=Door_Intro] at @s run function dungeon:start_dungeon/intro/door_opening
execute as @e[tag=Door_Intro] at @s run function dungeon:start_dungeon/intro/door_opening
execute as @e[tag=Door_Intro] at @s run function dungeon:start_dungeon/intro/door_opening
execute as @e[tag=Door_Intro] at @s run function dungeon:start_dungeon/intro/door_opening
execute as @e[tag=Chest_Top_End] at @s run function dungeon:end_dungeon/chest/opening
execute as @e[tag=Chest_Top_End] at @s run function dungeon:end_dungeon/chest/opening
execute as @e[tag=Chest_Top_End] at @s run function dungeon:end_dungeon/chest/opening
execute as @e[tag=Chest_Top_End] at @s run function dungeon:end_dungeon/chest/opening