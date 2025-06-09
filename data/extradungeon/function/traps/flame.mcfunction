
scoreboard players add @s Timer 1

execute if entity @s[scores={Timer=1}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 .5 0.1 0 3 normal
execute if entity @s[scores={Timer=2}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 .7 0.1 0 5 normal
execute if entity @s[scores={Timer=3..4}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 .9 0.1 0 8 normal
execute if entity @s[scores={Timer=5..7}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 1 0.1 0 9 normal
execute if entity @s[scores={Timer=8..10}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 1.1 0.1 0 13 normal
execute if entity @s[scores={Timer=11}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 1.3 0.1 0 13 normal
execute if entity @s[scores={Timer=12}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 1.5 0.1 0 13 normal
execute if entity @s[scores={Timer=13}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 1.8 0.1 0 13 normal
execute if entity @s[scores={Timer=14}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 1.9 0.1 0 13 normal
execute if entity @s[scores={Timer=15}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 2 0.1 0 13 normal
execute if entity @s[scores={Timer=16..20}] unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0.1 1.8 0.1 0 9 normal

execute if entity @s[scores={Timer=1..20}] unless block ~ ~-1 ~ air run playsound block.fire.ambient record @a[distance=..10] ~ ~ ~ 7 1 1
execute if entity @s[scores={Timer=1..20}] unless block ~ ~-1 ~ air run scoreboard players add @a[distance=..1] Damage 12
execute if entity @s[scores={Timer=1..20}] unless block ~ ~-1 ~ air run playsound entity.player.hurt record @a[distance=..1] ~ ~ ~ 7 1 1

execute if entity @s[scores={Timer=65..}] run scoreboard players set @s Timer 0