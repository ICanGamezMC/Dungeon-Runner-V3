summon marker 0 0 0 {Tags:["spawnroom","clear"]}

execute as @e[tag=north] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=south] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=east] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=west] at @s if block ~ ~ ~ air run kill @s

execute as @e[tag=clear] store result score @s PosX run data get entity @s Pos[0]
execute as @e[tag=clear] store result score @s PosZ run data get entity @s Pos[2]

function dungeongen:generation/base_gen/v1/repeat_tp
function dungeongen:generation/base_gen/v1/spawn_start with storage file:path
#This is the very end step
#
# Step one kills all entities not needed
# step two gets position and multiplies it by 8
# step three is tp the entity to the new position and start spawn:start