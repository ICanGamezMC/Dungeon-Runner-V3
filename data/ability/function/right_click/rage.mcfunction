
#This is the effects
effect give @s strength 15 1 true


#This is the mana that gets taken away and cooldown
scoreboard players remove @s Mana 15
scoreboard players add @s Cooldown 5

#This is the visuals

particle minecraft:dust_color_transition{from_color:[0.99,0.0,0.0],to_color:[0.10,0.0,0.1],scale:1} ~ ~ ~ 1 1 1 0 10 normal @a

playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 100 0 1