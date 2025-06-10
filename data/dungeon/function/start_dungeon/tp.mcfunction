#This cleans up entities and executes if entity is night
effect give @s blindness 3 10 true
execute if entity @e[tag=NIGHT] run time set night
kill @e[type=item]
#This is for dungeon music
function dungeon:start_dungeon/play_dungeon_music
#This runs tutorial
execute as @a at @s if entity @s[tag=Tutorial,scores={Step=2}] run scoreboard players set @s Step 3
#This is tags and teleporting to in dungeon room
tag @s add In_Dungeon
tag @s remove Out_Dungeon
tp @s[tag=In_Dungeon] @e[tag=Dungeon_Room_Main,limit=1,sort=random]