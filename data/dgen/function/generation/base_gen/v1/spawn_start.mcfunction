execute as @e[tag=clear] at @s run tp @s ~ ~20 ~

$execute as @e[tag=main_room] at @s run place template dgen:level/$(text)/main_room

summon marker ~ ~ ~ {Tags:["load_rooms","clear"]}