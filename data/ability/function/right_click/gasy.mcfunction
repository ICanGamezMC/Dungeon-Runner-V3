
#This is the effects
summon marker ~ ~ ~ {Tags:["gas_poison"]}


#This is the mana that gets taken away and cooldown
scoreboard players remove @s Mana 22
scoreboard players add @s Cooldown 10

#This is the visuals


playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 100 0 1