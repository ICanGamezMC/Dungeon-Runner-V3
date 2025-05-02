
#This is to set player to normal before and then add on the components
scoreboard players set @s MaxHealth 100
scoreboard players set @s MaxDefense 100
scoreboard players set @s MaxMana 100
scoreboard players set @s Health_Regen 1
scoreboard players set @s Mana_Regen 1
scoreboard players set @s Luck 1
scoreboard players set @s Wisdom 1


function dungeon:player_stats/max_stats/weapons
function dungeon:player_stats/max_stats/add
function dungeon:player_stats/max_stats/chestplate
function dungeon:player_stats/max_stats/add
function dungeon:player_stats/max_stats/helmet
function dungeon:player_stats/max_stats/add
function dungeon:player_stats/max_stats/leggings
function dungeon:player_stats/max_stats/add
function dungeon:player_stats/max_stats/boots
function dungeon:player_stats/max_stats/add

#Defense regen
execute as @a at @s run scoreboard players operation @s Defense += @s Defense
execute as @a at @s run scoreboard players operation @s Defense < @s MaxDefense