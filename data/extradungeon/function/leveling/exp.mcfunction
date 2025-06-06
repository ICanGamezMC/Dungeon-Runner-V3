
execute as @a[scores={Experience_ADD=1..}] run playsound minecraft:block.amethyst_block.resonate record @s ~ ~ ~ 100 2 1 
execute as @a[scores={Experience_ADD=1..}] run scoreboard players add @s Experience 1
execute as @a[scores={Experience_ADD=1..}] run scoreboard players remove @s Experience_ADD 1