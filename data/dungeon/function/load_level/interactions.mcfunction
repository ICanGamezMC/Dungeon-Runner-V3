
execute if entity @s[tag=Level1] run kill @e[tag=clear2]
execute if entity @s[tag=Level1] run function dungeongen:levels/built_in/level_1
execute if entity @s[tag=Level1] run tellraw @a ["",{"text":"Charting For \"","bold":true,"color":"blue"},{"text":" The Forest ","bold":true,"color":"dark_green"},{"text":"\"","bold":true,"color":"blue"}]


#This would be for sound
playsound minecraft:entity.experience_orb.pickup record @a ~ ~ ~ 25 1 1

#This is to reset interactions
data remove entity @s interaction
