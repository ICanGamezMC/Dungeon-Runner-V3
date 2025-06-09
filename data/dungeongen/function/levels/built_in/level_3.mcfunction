

kill @e[tag=LEVEL]
summon marker 0 0 0 {Tags:["lorw","lore","larn","lars","sre","srn","srs","LEVEL"]}
summon marker 0 0 0 {Tags:["LEVEL","LEVEL3"]}
data modify storage file:path text set value "dungeongen:level/3"
data modify storage file:loot text set value "dungeon:loot_give/level3"
function dungeongen:generation/base_gen/v1/load
