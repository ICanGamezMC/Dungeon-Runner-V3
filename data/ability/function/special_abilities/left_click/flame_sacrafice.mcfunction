execute as @e[tag=flame_sacrafice_particle] at @s unless entity @e[tag=flame_sacrafice_particle,distance=5] run function ability:particles/flame_sacrafice_particle
execute as @e[tag=flame_sacrafice_particle] at @s run scoreboard players add @s Timer 1
execute as @e[tag=flame_sacrafice_particle] at @s[scores={Timer=120..}] run kill @s