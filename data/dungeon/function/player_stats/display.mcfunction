
execute as @a if entity @s[scores={Cooldown=1..}] run title @s actionbar ["",{"text":"< ","color":"white"},{"text":"⏳ ","color":"dark_red"},{"score":{"name":"@s","objective":"Cooldown"},"bold":true,"color":"dark_red"},{"text":" ❤","color":"red"},{"score":{"name":"@s","objective":"Health"},"bold":true,"color":"red"},{"text":" ❈","color":"green"},{"score":{"name":"@s","objective":"Defense"},"bold":true,"color":"green"},{"text":" ✎","color":"aqua"},{"score":{"name":"@s","objective":"Mana"},"bold":true,"color":"aqua"},{"text":" >","color":"white"}]


execute as @a unless entity @s[scores={Cooldown=1..}] run title @s actionbar ["",{"text":"< ","color":"white"},{"text":"❤","color":"red"},{"score":{"name":"@s","objective":"Health"},"bold":true,"color":"red"},{"text":" ❈","color":"green"},{"score":{"name":"@s","objective":"Defense"},"bold":true,"color":"green"},{"text":" ✎","color":"aqua"},{"score":{"name":"@s","objective":"Mana"},"bold":true,"color":"aqua"},{"text":" >","color":"white"}]
#This is the health, defense, mana display, an actionbar for each player

