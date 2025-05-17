
execute as @s[scores={Timer=1..290}] run tp @a[tag=In_Dungeon] @e[tag=Chest_Camera,limit=1,sort=nearest]
tp @s[scores={Timer=..180}] ~ ~ ~ ~ ~-.5
scoreboard players add @s Timer 1


execute as @s[scores={Timer=291}] run tp @a[tag=In_Dungeon] 58 -35 -29

tp @s[scores={Timer=310..}] ^ ^ ^ -45 0