execute as @e[tag=north] store result score @s RNG1 run random value 1..6
execute as @e[tag=south] store result score @s RNG1 run random value 1..6
execute as @e[tag=east] store result score @s RNG1 run random value 1..6
execute as @e[tag=west] store result score @s RNG1 run random value 1..6

execute as @e[tag=north] at @s run function dgen:generation/base_gen/v1/place_room/north
execute as @e[tag=south] at @s run function dgen:generation/base_gen/v1/place_room/south
execute as @e[tag=east] at @s run function dgen:generation/base_gen/v1/place_room/east
execute as @e[tag=west] at @s run function dgen:generation/base_gen/v1/place_room/west



execute as @e[tag=north] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=south] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=east] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=west] at @s unless block ~ ~ ~ air run kill @s

execute as @e[tag=clear] at @s run scoreboard players add @s Step 1