#This is a tutorial for everything needed
execute as @a if entity @s[tag=Tutorial] unless entity @s[scores={Step=0..}] run scoreboard players set @s Step 0


execute as @a if entity @s[tag=Tutorial,scores={Step=0}] run title @s actionbar {"text":"Go to the map in front of the door","bold":true,"color":"dark_blue"}


execute as @a at @s if entity @s[tag=Tutorial,scores={Step=0}] if entity @e[distance=..5,tag=Level1] run scoreboard players set @s Step 1
execute as @a if entity @s[tag=Tutorial,scores={Step=1}] run title @s actionbar {"text":"Right Click colored particles on map","bold":true,"color":"dark_blue"}



execute as @a if entity @s[tag=Tutorial,scores={Step=2}] run title @s actionbar {"text":"Go walk up to door","bold":true,"color":"dark_blue"}


execute as @a if entity @s[tag=Tutorial,scores={Step=3}] if entity @e[tag=Door_Intro,scores={Timer=..1100}] run title @s actionbar {"text":"Fight Mobs!","bold":true,"color":"dark_blue"}


execute as @a if entity @s[tag=Tutorial,scores={Step=4}] run title @s actionbar {"text":"Go to where you spawned","bold":true,"color":"dark_blue"}
