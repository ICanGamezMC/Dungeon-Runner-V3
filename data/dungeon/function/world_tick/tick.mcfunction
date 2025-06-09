
execute as @e[tag=Entrance] at @s if entity @a[distance=..10] run function dungeon:world_tick/entrance

#This is particles for map
execute at @e[tag=Level1] if entity @a[distance=..10] run particle dust{color:[0.12,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 1
execute at @e[tag=Level2] if entity @a[distance=..10] if entity @e[tag=L1] if entity @a[sort=nearest,limit=1,scores={Level=3..}] run particle dust{color:[0.12,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 1
execute at @e[tag=Level3] if entity @a[distance=..10] if entity @e[tag=L2] if entity @a[sort=nearest,limit=1,scores={Level=5..}] run particle dust{color:[0.12,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 1
