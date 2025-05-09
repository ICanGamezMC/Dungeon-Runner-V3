
#This is the effects
effect give @s resistance 15 2 true


#This is the mana that gets taken away and cooldown
scoreboard players remove @s Mana 31
scoreboard players add @s Cooldown 5

#This is the visuals

particle minecraft:dust_color_transition{from_color:[0.0,0.0,0.99],to_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 1 1 1 0 10 normal @a
