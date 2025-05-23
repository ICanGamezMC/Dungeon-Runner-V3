
#This is for a tutorial
execute as @a at @s if entity @s[tag=Tutorial,scores={Step=1}] run scoreboard players set @s Step 2



#This is the levels
execute if entity @s[tag=Level1] run kill @e[tag=clear2]
execute if entity @s[tag=Level1] run function dungeongen:levels/built_in/level_1
execute if entity @s[tag=Level1] run tellraw @a ["",{"text":"Charting For \"","bold":true,"color":"blue"},{"text":" The Forest ","bold":true,"color":"dark_green"},{"text":"\"","bold":true,"color":"blue"}]

execute if entity @s[tag=Level2] if entity @e[tag=L1] run kill @e[tag=clear2]
execute if entity @s[tag=Level2] if entity @e[tag=L1] run say test
execute if entity @s[tag=Level2] if entity @e[tag=L1] run tellraw @a ["",{"text":"Charting For \"","bold":true,"color":"blue"},{"text":" The Forest ","bold":true,"color":"dark_green"},{"text":"\"","bold":true,"color":"blue"}]



#This would be for sound
playsound minecraft:entity.experience_orb.pickup record @a ~ ~ ~ 25 1 1

#This is to reset interactions
data remove entity @s interaction

