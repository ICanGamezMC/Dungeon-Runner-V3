
#This checks all mobs with zombie base
execute as @e[tag=Distance] at @s if entity @a[distance=..9,gamemode=adventure] run function dungeon:mobs/spawning/zombie/zombie_tick
execute as @e[tag=Distance] at @s if entity @a[distance=..9,gamemode=adventure] run function dungeon:mobs/spawning/skeleton/skeleton_tick
execute as @e[tag=Distance] at @s if entity @a[distance=..9,gamemode=adventure] run function dungeon:mobs/spawning/witch/witch_tick
execute as @e[tag=Distance] at @s if entity @a[distance=..9,gamemode=adventure] run function dungeon:mobs/spawning/husk/husk_tick
execute as @e[tag=Distance] at @s if entity @a[distance=..9,gamemode=adventure] run function dungeon:mobs/spawning/spider/spider_tick