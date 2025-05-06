
execute as @e[tag=clear] at @s[scores={PosX=1..}] run tp @s ~8 ~ ~
execute as @e[tag=clear] at @s[scores={PosX=1..}] run scoreboard players remove @s PosX 1
execute as @e[tag=clear] at @s[scores={PosZ=1..}] run tp @s ~ ~ ~8
execute as @e[tag=clear] at @s[scores={PosZ=1..}] run scoreboard players remove @s PosZ 1
#This teleports the entities 8* each block they have stored from 0,0