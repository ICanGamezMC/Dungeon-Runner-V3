
execute as @e[tag=Entrance] at @s if entity @a[distance=..10] run function dungeon:world_tick/entrance

execute at @e[tag=Level1] if entity @a[distance=..10] run particle dust{color:[0.12,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 1