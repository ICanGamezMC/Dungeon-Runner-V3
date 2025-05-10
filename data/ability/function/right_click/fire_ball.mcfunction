
#This is the effects
summon armor_stand ~ ~ ~ {Tags:["FireBall"],NoBasePlate:true,Invisible:true,Invulnerable:true,NoGravity:true}
execute at @s run tp @e[tag=FireBall,limit=1,sort=nearest] @s

#This is the mana that gets taken away and add cooldown
scoreboard players remove @s Mana 8
scoreboard players add @s Cooldown 4

#This is the visuals


playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 100 0 1