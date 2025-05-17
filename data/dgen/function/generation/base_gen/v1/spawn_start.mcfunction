execute as @e[tag=clear] at @s run tp @s ~ ~20 ~

$execute as @e[tag=main_room] at @s run place template $(text)/main_room

summon marker ~ ~ ~ {Tags:["load_rooms","clear"]}
#This places the larger start room and runs a summon load rooms entity
# to place all the structures from file path 