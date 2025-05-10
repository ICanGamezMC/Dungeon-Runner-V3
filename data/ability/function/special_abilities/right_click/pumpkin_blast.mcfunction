execute at @s run particle dust{color:[1.0,0.64,0.0],scale:1} ~ ~ ~ 0 0 0 0.1 3

execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run damage @e[type=!player,limit=1,sort=random,tag=!FireBall,distance=..6] 5 generic by @n[type=player]
execute at @s unless block ~ ~-1 ~ air run particle dust{color:[1.0,0.64,0.0],scale:1} ~ ~ ~ 2 0 2 0.1 40
execute at @s unless block ~ ~-1 ~ air run playsound entity.generic.explode record @a[distance=..30] ~ ~ ~ 25 2 1
execute at @s unless block ~ ~-1 ~ air run playsound entity.slime.squish record @a[distance=..30] ~ ~ ~ 25 1 1
execute at @s unless block ~ ~-1 ~ air run kill @s