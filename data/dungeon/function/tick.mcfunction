

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
