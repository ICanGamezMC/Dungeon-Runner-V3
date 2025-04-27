
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..}] run scoreboard players remove @s Health 1
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..}] run scoreboard players remove @s Damage 1

execute if entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..}] run scoreboard players set @s Damage 0