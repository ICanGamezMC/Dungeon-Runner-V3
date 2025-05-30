tellraw @a ["",{"text":"--------------------------","bold":true,"color":"black"},{"text":"\n"},{"text":"Dungeon Runner Datapack V3.0","bold":true,"color":"gold"},{"text":"\n"},{"text":"This is beta testing only, msg me online to fix bugs or other stuff","color":"gray"},{"text":"\n"},{"text":"DEMO VERSION 1.5","bold":true,"color":"gray"},{"text":"\n"},{"text":"--------------------------","bold":true,"color":"black"}]


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
scoreboard objectives add Regen_Timer dummy


#This loads in cooldown
schedule function dungeon:player_stats/cooldown 1s

#This is for players exp
scoreboard objectives add Experience dummy
scoreboard objectives add Experience_ADD dummy
scoreboard objectives add Level dummy

#This is for full set bonus
scoreboard objectives add Full_Set_Bonus dummy

#This is for error Tests
scoreboard objectives add error dummy
