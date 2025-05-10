execute as @s store result score @s RNG1 run random value 0..10
#This is the effects
execute as @s[scores={RNG1=1..8}] run effect give @s strength 20 2 true
execute as @s[scores={RNG1=9..10}] run tellraw @a ["",{"selector":"@s"}," Died of a heart attack"]
execute as @s[scores={RNG1=9..10}] run kill @s


#This is the mana that gets taken away and cooldown
scoreboard players remove @s Mana 13
scoreboard players add @s Cooldown 6

#This is the visuals

particle minecraft:dust_color_transition{from_color:[0.99,0.0,0.0],to_color:[0.10,0.0,0.1],scale:1} ~ ~ ~ 1 1 1 0 10 normal @a

playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 100 0 1