tellraw @a ["",{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","bold":true,"color":"black"},{"text":"\n"},{"text":"                "},{"text":"\u0040","font":"dungeon:title"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"- V3.0 Stable Version.","color":"dark_gray"},{"text":"\n"},{"text":"- Thanks for downloading ","color":"yellow"},{"selector":"@p","color":"yellow"},{"text":"\n"},{"text":"- For New Updates ","bold":true,"color":"#FEAF06"},{"text":"Click Here","bold":true,"color":"#FEAF06","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/icangamez-dungeon-runner"}},{"text":"\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","bold":true,"color":"black"}]

#regen function
function dungeon:player_stats/regen
scoreboard objectives add Damage minecraft.custom:minecraft.damage_taken

#This loads all the numbers and scoreboards for players max stats
function dungeon:player_stats/load_stats

#This is for arrow detect shot
scoreboard objectives add Shot_Arrow minecraft.used:minecraft.bow

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
