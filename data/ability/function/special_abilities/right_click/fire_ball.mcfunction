
damage @e[type=!player,limit=1,sort=nearest,tag=!FireBall,distance=..1.5] 2 generic by @n[type=player]
particle flame ~ ~1 ~ 0 0 0 0.1 6 normal
execute at @s run tp @s ^ ^ ^.4
playsound block.fire.ambient record @a[distance=..30] ~ ~ ~ 20 1 1
execute as @s run scoreboard players add @s Timer 1
execute as @s[scores={Timer=40..}] run kill @s

execute as @s[scores={Timer=33..}] if block ~ ~ ~ air unless block ~ ~-1 ~ air run setblock ~ ~ ~ fire