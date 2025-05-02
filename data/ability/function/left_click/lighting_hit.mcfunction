scoreboard players set @s RNG1 0
execute as @s store result score @s RNG1 run random value 1..20
execute if entity @s[scores={RNG1=2..}] at @s run summon lightning_bolt ~ ~ ~
execute as @s store result score @s RNG1 run random value 1..20
execute if entity @s[scores={RNG1=8..}] at @e[distance=..10,limit=1,sort=furthest] run summon lightning_bolt
execute as @s store result score @s RNG1 run random value 1..20
execute if entity @s[scores={RNG1=19..}] at @e[distance=..14,limit=3,sort=furthest] run summon lightning_bolt