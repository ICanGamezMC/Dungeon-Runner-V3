
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:1b}] if entity @s[scores={Cooldown=..0,Mana=15..}] run function ability:right_click/rage
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:2b}] if entity @s[scores={Cooldown=..0,Mana=31..}] run function ability:right_click/mana_ward
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:3b}] if entity @s[scores={Cooldown=..0,Mana=22..}] run function ability:right_click/gasy
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:4b}] if entity @s[scores={Cooldown=..0,Mana=19..}] run function ability:right_click/multi_hit
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:5b}] if entity @s[scores={Cooldown=..0,Mana=8..}] run function ability:right_click/fire_ball
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:6b}] if entity @s[scores={Cooldown=..0,Mana=13..}] run function ability:right_click/heart_attack
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:7b}] if entity @s[scores={Cooldown=..0,Mana=20..}] run function ability:right_click/pumpkin_blast



execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:661s}] run function ability:right_click/health_p1

advancement revoke @s only dungeon:rightclick