
#This checks all mobs with zombie base
execute as @e[tag=Distance] at @s if entity @a[distance=..9,gamemode=adventure] run function dungeon:mobs/spawning/zombie/zombie_tick
