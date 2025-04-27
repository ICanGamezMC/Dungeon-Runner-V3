execute as @a at @s run scoreboard players operation @s Health += @s Health_Regen
execute as @a at @s run scoreboard players operation @s Health < @s MaxHealth

schedule function dungeon:player_stats/regen 10