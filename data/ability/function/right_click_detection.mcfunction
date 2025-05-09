
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:1b}] if entity @s[scores={Cooldown=..0,Mana=15..}] run function ability:right_click/rage
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:2b}] if entity @s[scores={Cooldown=..0,Mana=31..}] run function ability:right_click/mana_ward
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{Ability:3b}] if entity @s[scores={Cooldown=..0,Mana=22..}] run function ability:right_click/gasy


advancement revoke Trentity only dungeon:rightclick