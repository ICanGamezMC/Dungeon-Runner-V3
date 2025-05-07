say loaded Dungeon Runner

#This loads the world
execute unless entity @e[tag=World] run function dungeon:load_world/load_world


#regen function
function dungeon:player_stats/regen
scoreboard objectives add Damage minecraft.custom:minecraft.damage_taken

#This loads all the numbers and scoreboards for players max stats
function dungeon:player_stats/load_stats

#This is rng
scoreboard objectives add RNG1 dummy

#This is for pos
scoreboard objectives add PosX dummy
scoreboard objectives add PosZ dummy

function dungeon:number

#This is for Timers
scoreboard objectives add Timer dummy






