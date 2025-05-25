#This is to make sure the player doesn't die from natural damamge
execute if entity @s[scores={Damage=1..}] run effect give @s instant_health 10 200 true

#This is for regen delay
execute as @a if entity @s[scores={Damage=1..}] run scoreboard players set @s Regen_Timer 3

#This is applying the defense
execute if entity @s[scores={Damage=1..}] run scoreboard players operation @s DamageMath = @s Defense
execute if entity @s[scores={Damage=1..}] run scoreboard players operation @s DamageMath /= NUMBER 10
execute if entity @s[scores={Damage=1..}] run scoreboard players operation @s Damage -= @s DamageMath

#This is for small to large damage, makes it quicker to take damage
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..10}] run scoreboard players remove @s Health 1
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..10}] run scoreboard players remove @s Damage 1
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=11..30}] run scoreboard players remove @s Health 2
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=11..30}] run scoreboard players remove @s Damage 2
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=31..}] run scoreboard players remove @s Health 3
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=31..}] run scoreboard players remove @s Damage 3

#This is to take damage, around the end there is a kill function when a player looses all their health
execute if entity @s[scores={Damage=..0}] run scoreboard players set @s Damage 0
execute if entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..}] run scoreboard players set @s Damage 0
execute if entity @s[scores={Health=..0}] run kill @s
execute if entity @s[scores={Health=..0}] run scoreboard players set @s Health 1000
