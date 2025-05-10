
#This is the effects
summon falling_block ~ ~1.2 ~ {BlockState:{Name:"minecraft:pumpkin"},Time:1,Motion:[0.0,.8,0.0],Tags:["Pumpkin_Blast"]}
execute as @s at @s run attribute @e[limit=1,sort=nearest,tag=Pumpkin_Blast] scale base set 2
#This is the mana that gets taken away and add cooldown
scoreboard players remove @s Mana 20
scoreboard players add @s Cooldown 8

#This is the visuals

playsound minecraft:block.pumpkin.carve record @s ~ ~ ~ 100 0 1
playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 100 0 1