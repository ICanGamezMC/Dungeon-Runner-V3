summon marker 0 0 0 {Tags:["spawnroom","clear"]}

execute as @e[tag=north] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=south] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=east] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=west] at @s if block ~ ~ ~ air run kill @s

execute as @e[tag=clear] store result score @s PosX run data get entity @s Pos[0]
execute as @e[tag=clear] store result score @s PosZ run data get entity @s Pos[2]

function dgen:generation/base_gen/v1/repeat_tp
function dgen:generation/base_gen/v1/spawn_start
function dgen:generation/base_gen/v1/spawn_start with storage file:path
