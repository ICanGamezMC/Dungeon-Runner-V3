#This is a tick function
execute as @e[tag=rotate] at @s run tp @s ~ ~ ~ ~1 ~0


#LEFT CLICK ABILITIES
function ability:special_abilities/left_click/radiant_health
function ability:special_abilities/left_click/flame_sacrafice

#RIGHT CLICK ABILITIES
function ability:special_abilities/right_click/gas_poison
execute as @e[tag=Multi_Hit] at @s run function ability:special_abilities/right_click/multi_hit
execute as @e[tag=FireBall] at @s run function ability:special_abilities/right_click/fire_ball
execute as @e[tag=Pumpkin_Blast] at @s run function ability:special_abilities/right_click/pumpkin_blast

#FULL SET ABILITIES
execute as @a at @s run function ability:full_set_trigger