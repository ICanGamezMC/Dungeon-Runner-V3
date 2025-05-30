
execute as @a if entity @s[scores={Experience=50..}] unless entity @s[scores={Level=1..}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=60..}] if entity @s[scores={Level=1}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=70..}] if entity @s[scores={Level=2}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=80..}] if entity @s[scores={Level=3}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=90..}] if entity @s[scores={Level=4}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=100..}] if entity @s[scores={Level=5}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=110..}] if entity @s[scores={Level=6}] run scoreboard players add @s Level 1
execute as @a if entity @s[scores={Experience=130..}] if entity @s[scores={Level=7}] run scoreboard players add @s Level 1

