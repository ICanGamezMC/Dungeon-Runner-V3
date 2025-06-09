

kill @e[tag=LEVEL]
summon marker 0 0 0 {Tags:["srn","sre","larn","lars","lorn","lorw","larw","lore","lors","LEVEL"]}
summon marker 0 0 0 {Tags:["LEVEL","LEVEL1","NIGHT"]}
data modify storage file:path text set value "dungeongen:level/1"
data modify storage file:loot text set value "dungeon:loot_give/level1"
function dungeongen:generation/base_gen/v1/load

fillbiome 5 -6 10 115 -42 128 dungeongen:level_one