
execute as @a if entity @s[scores={Experience=20..}] unless entity @s[scores={Level=1..}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=50..}] if entity @s[scores={Level=1}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=120..}] if entity @s[scores={Level=2}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=210..}] if entity @s[scores={Level=3}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=350..}] if entity @s[scores={Level=4}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=400..}] if entity @s[scores={Level=5}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=510..}] if entity @s[scores={Level=6}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=630..}] if entity @s[scores={Level=7}] run scoreboard players add @s Level 1

