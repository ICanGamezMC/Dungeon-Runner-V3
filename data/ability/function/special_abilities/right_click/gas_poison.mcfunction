
execute as @e[tag=gas_poison] at @s run effect give @e[type=!player,distance=..10] poison
execute as @e[tag=gas_poison] at @s run particle sneeze ~ ~ ~ 3 3 3 0 5 normal
execute as @e[tag=gas_poison] at @s run scoreboard players add @s Timer 1
execute as @e[tag=gas_poison] at @s[scores={Timer=120..}] run kill @s