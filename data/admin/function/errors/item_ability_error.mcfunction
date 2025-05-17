
scoreboard players set NUMBER error 0
execute unless function ability:full_set_trigger run scoreboard players set NUMBER error 1
execute unless score NUMBER error matches 1 run tellraw @a ["",{"text":"ERROR 100","bold":true,"color":"red"},{"text":" : FUNC 'ability:full_set_trigger' RETURNED:0","bold":true,"color":"red"}]

scoreboard players set NUMBER error 0
execute unless function ability:right_click/pumpkin_blast run scoreboard players set NUMBER error 1
execute unless score NUMBER error matches 1 run tellraw @a ["",{"text":"ERROR 101","bold":true,"color":"red"},{"text":" : FUNC 'ability:right_click' RETURNED:0","bold":true,"color":"red"}]

scoreboard players set NUMBER error 0
execute unless function ability:left_click/lighting_hit run scoreboard players set NUMBER error 1
execute unless score NUMBER error matches 1 run tellraw @a ["",{"text":"ERROR 102","bold":true,"color":"red"},{"text":" : FUNC 'ability:left_click' RETURNED:0","bold":true,"color":"red"}]

scoreboard players set NUMBER error 0
execute unless function ability:particles/radiant_health_particle run scoreboard players set NUMBER error 1
execute unless score NUMBER error matches 1 run tellraw @a ["",{"text":"ERROR 103","bold":true,"color":"red"},{"text":" : FUNC 'ability:particles' RETURNED:0","bold":true,"color":"red"}]

scoreboard players set NUMBER error 0
execute unless function ability:special_abilities/right_click/fire_ball run scoreboard players set NUMBER error 1
execute unless score NUMBER error matches 1 run tellraw @a ["",{"text":"ERROR 104","bold":true,"color":"red"},{"text":" : FUNC 'ability:special_abilities' RETURNED:0","bold":true,"color":"red"}]
