
execute as @e[tag=radiant_health_particle] at @s unless entity @e[tag=radiant_health_particle,distance=5] run function ability:particles/radiant_health_particle

execute as @e[tag=radiant_health] at @s as @a[distance=..6] run scoreboard players set @s Health_Regen 2
execute as @e[tag=radiant_health_particle] at @s run scoreboard players add @s Timer 1
execute as @e[tag=radiant_health_particle] at @s[scores={Timer=120..}] run kill @s
execute as @e[tag=radiant_health] at @s run scoreboard players add @s Timer 1
execute as @e[tag=radiant_health] at @s[scores={Timer=120..}] run kill @s