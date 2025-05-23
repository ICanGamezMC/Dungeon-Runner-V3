
effect give @a saturation infinite 100 true

# This is for keeping the players stats alive and running, also keep the player aline with custom health
execute as @a as @s run function dungeon:player_stats/tick
function ability:trigger_ability
#This is generation for v1 gen, works on the last step of loading rooms
execute if entity @e[tag=load_rooms] run function dungeongen:generation/base_gen/v1/repeat_place


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
execute if entity @e[tag=Distance] at @e[tag=Entrance] if entity @a[distance=..5] run function dungeon:start_dungeon/start


#This is for ending a dungeon
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] as @e[tag=Dungeon_Room_Main] if entity @a[tag=In_Dungeon] run scoreboard players add @s Timer 1
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] as @e[tag=Dungeon_Room_Main,scores={Timer=1}] if entity @a[tag=In_Dungeon] run tellraw @a {"text":"Dungeon Portal Is Opened","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Enter the starting room to complete dungeon","bold":true,"color":"dark_gray"}]}}
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] as @e[tag=Dungeon_Room_Main,scores={Timer=1}] if entity @a[tag=In_Dungeon] run playsound minecraft:block.end_portal.spawn record @a ~ ~ ~ 100 2 1
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] at @e[tag=Dungeon_Room_Main] run particle squid_ink ~ ~ ~ 0.2 1 0.2 0 2
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] at @e[tag=Dungeon_Room_Main] if entity @a[distance=..2] as @a at @s run function dungeon:end_dungeon/start
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] at @e[tag=Dungeon_Room_Main] run execute as @a at @s if entity @s[tag=Tutorial,scores={Step=3}] run scoreboard players set @s Step 4

#This load in world
execute unless entity @e[tag=World] run function dungeon:load_world/load_world

#This is for tutorials
function dungeon:tutorial


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


#This is for first time players
execute as @a unless entity @s[tag=First_Join] run function dungeon:player_stats/new_player