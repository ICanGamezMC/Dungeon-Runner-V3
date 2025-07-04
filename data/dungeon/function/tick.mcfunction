
#This is for no exp cause its now turned evil
kill @e[type=experience_orb]

#This is for players getting no hungy
effect give @a saturation infinite 100 true
effect clear @a minecraft:weakness
# This is for keeping the players stats alive and running, also keep the player aline with custom health
execute as @a as @s run function dungeon:player_stats/tick
function ability:trigger_ability
#This is generation for v1 gen, works on the last step of loading rooms
execute if entity @e[tag=load_rooms] run function dungeongen:generation/base_gen/v1/repeat_place

#This is for those pesky cobblestone and potion items
kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:potion"}}]

#This makes things glow!!
execute unless entity @e[tag=Distance] as @e[tag=enemy] unless entity @s[team=Enemy] run team join Enemy @s
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] as @e[tag=Portal1] run team join Spawn @s
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] as @e[tag=Portal1] run effect give @s invisibility

#This is for the animated portal
function dungeon:world_tick/portal

#This is for players who die or get out of map ;)
execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run tag @s add Out_Dungeon
execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run tag @s remove In_Dungeon
execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run stopsound @s
execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run playsound minecraft:music_disc.blocks record @s ~ ~ ~ 1000 1 1
execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run tp @s 58 -35 -29

#This is for the world ticks, lots of if cases to stop lag!
function dungeon:world_tick/tick

#This is for spawning mobs
function dungeon:mobs/spawning/tick

#This is for selecting the level
execute as @e[type=minecraft:interaction,nbt={interaction:{}}] at @s run function dungeon:load_level/interactions

#This is for starting a dungeon
execute if entity @e[tag=Distance] at @e[tag=Entrance] if entity @a[distance=..5] run function dungeon:start_dungeon/start

#This is for extra dungeon tick features
function extradungeon:tick

#This is for ending a dungeon
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] as @e[tag=Dungeon_Room_Main] if entity @a[tag=In_Dungeon] run scoreboard players add @s Timer 1
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] as @e[tag=Dungeon_Room_Main,scores={Timer=1}] if entity @a[tag=In_Dungeon] run tellraw @a {"text":"Dungeon Portal Is Opened","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Enter the starting room to complete dungeon","bold":true,"color":"dark_gray"}]}}
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] as @e[tag=Dungeon_Room_Main,scores={Timer=1}] if entity @a[tag=In_Dungeon] run playsound minecraft:block.end_portal.spawn record @a ~ ~ ~ 100 2 1
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] at @e[tag=Dungeon_Room_Main,scores={Timer=1}] run summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,Size:1,Tags:["Portal1","clear3","clear2"],attributes:[{id:"minecraft:scale",base:2}]}
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] at @e[tag=Dungeon_Room_Main] run particle squid_ink ~ ~ ~ 0.2 1 0.2 0 2
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] at @e[tag=Dungeon_Room_Main] if entity @a[distance=..2] as @a at @s run function dungeon:end_dungeon/start
execute unless entity @e[tag=Distance] unless entity @e[tag=enemy] at @e[tag=Dungeon_Room_Main] run execute as @a at @s if entity @s[tag=Tutorial,scores={Step=3}] run scoreboard players set @s Step 4
execute unless entity @e[tag=Distance] as @e[tag=enemy] run effect give @s minecraft:glowing
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

#This is arrows Damage
execute as @a[scores={Shot_Arrow=1..}] run data modify entity @n[type=minecraft:arrow] damage set from entity @n[type=minecraft:arrow] weapon.components.minecraft:custom_data.Damage
execute as @a[scores={Shot_Arrow=1..}] run scoreboard players set @s Shot_Arrow 0

#This is debug mode
function admin:debugs/major_info

#This is for animated players
function dungeon:world_tick/animated_players