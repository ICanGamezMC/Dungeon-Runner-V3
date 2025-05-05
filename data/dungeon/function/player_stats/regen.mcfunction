execute as @a as @s run scoreboard players operation @s Health += @s Health_Regen
execute as @a as @s run scoreboard players operation @s Health < @s MaxHealth

execute as @a as @s run scoreboard players operation @s Mana += @s Mana_Regen
execute as @a as @s run scoreboard players operation @s Mana < @s MaxMana

schedule function dungeon:player_stats/regen 10