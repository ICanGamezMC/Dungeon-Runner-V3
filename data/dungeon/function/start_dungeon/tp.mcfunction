effect give @s blindness 3 10 true
execute if entity @e[tag=NIGHT] run time set night
kill @e[type=item]

execute as @a at @s if entity @s[tag=Tutorial,scores={Step=2}] run scoreboard players set @s Step 3

tag @s add In_Dungeon
tag @s remove Out_Dungeon
tp @s[tag=In_Dungeon] @e[tag=Dungeon_Room_Main,limit=1,sort=random]