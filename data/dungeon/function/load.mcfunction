say loaded Dungeon Runner


#This is gamerule functions
gamerule doFireTick false
gamerule randomTickSpeed 0
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule mobGriefing false
gamerule keepInventory true
gamerule doMobSpawning false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true

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