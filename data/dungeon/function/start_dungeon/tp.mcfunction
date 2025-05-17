time set night
kill @e[type=item]

tag @s add In_Dungeon
tag @s remove Out_Dungeon
tp @s[tag=In_Dungeon] @e[tag=Dungeon_Room_Main,limit=1,sort=random]