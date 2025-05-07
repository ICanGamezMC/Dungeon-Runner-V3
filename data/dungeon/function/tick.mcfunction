

# This is for keeping the players stats alive and running, also keep the player aline with custom health
execute as @a as @s run function dungeon:player_stats/tick
function ability:trigger_ability
#This is generation for v1 gen, works on the last step of loading rooms
execute if entity @e[tag=load_rooms] run function dgen:generation/base_gen/v1/repeat_place

execute as @a at @s as @s[gamemode=adventure,y=-59,dy=1] run tp @s 58 -35 -29