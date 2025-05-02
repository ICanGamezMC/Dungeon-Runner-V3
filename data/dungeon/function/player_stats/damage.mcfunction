execute if entity @s[scores={Damage=1..}] run scoreboard players operation @s DamageMath = @s Defense
execute if entity @s[scores={Damage=1..}] run scoreboard players operation @s DamageMath /= NUMBER 10
execute if entity @s[scores={Damage=1..}] run scoreboard players operation @s Damage -= @s DamageMath

execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..10}] run scoreboard players remove @s Health 1
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..10}] run scoreboard players remove @s Damage 1
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=11..30}] run scoreboard players remove @s Health 2
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=11..30}] run scoreboard players remove @s Damage 2
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=31..}] run scoreboard players remove @s Health 3
execute unless entity @s[scores={Health=..0}] if entity @s[scores={Damage=31..}] run scoreboard players remove @s Damage 3

execute if entity @s[scores={Damage=..0}] run scoreboard players set @s Damage 0
execute if entity @s[scores={Damage=1..}] run effect give @s instant_health 10 200 true
execute if entity @s[scores={Health=..0}] if entity @s[scores={Damage=1..}] run scoreboard players set @s Damage 0
execute if entity @s[scores={Health=..0}] run kill @s
execute if entity @s[scores={Health=..0}] run scoreboard players set @s Health 1000
