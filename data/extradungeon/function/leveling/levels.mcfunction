
execute as @a if entity @s[scores={Experience=20..}] unless entity @s[scores={Level=1..}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=40..}] if entity @s[scores={Level=1}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=90..}] if entity @s[scores={Level=2}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=150..}] if entity @s[scores={Level=3}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=350..}] if entity @s[scores={Level=4}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=400..}] if entity @s[scores={Level=5}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=510..}] if entity @s[scores={Level=6}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=630..}] if entity @s[scores={Level=7}] run scoreboard players add @s Level 1

