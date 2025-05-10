
damage @e[type=!player,limit=1,sort=nearest,tag=!Multi_Hit,distance=..3] 4 generic by @n[type=player]
particle sweep_attack ~ ~ ~ 1 1 0 0 3 normal
execute at @s run tp @s ^ ^ ^.4
execute at @s[scores={Timer=1..3}] run playsound entity.player.attack.sweep record @a[distance=..30] ~ ~ ~ 20 1 1
execute at @s[scores={Timer=6..8}] run playsound entity.player.attack.sweep record @a[distance=..30] ~ ~ ~ 20 1 1
execute at @s[scores={Timer=12..15}] run playsound entity.player.attack.sweep record @a[distance=..30] ~ ~ ~ 20 1 1
execute at @s[scores={Timer=17..20}] run playsound entity.player.attack.sweep record @a[distance=..30] ~ ~ ~ 20 1 1
execute at @s[scores={Timer=23..31}] run playsound entity.player.attack.sweep record @a[distance=..30] ~ ~ ~ 20 1 1
execute at @s[scores={Timer=34..40}] run playsound entity.player.attack.sweep record @a[distance=..30] ~ ~ ~ 20 1 1
execute as @s run scoreboard players add @s Timer 1
execute as @s[scores={Timer=40..}] run kill @s