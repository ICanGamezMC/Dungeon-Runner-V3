

kill @e[tag=LEVEL]
summon marker 0 0 0 {Tags:["lorn","lors","lore","lorw","srw","LEVEL"]}
summon marker 0 0 0 {Tags:["LEVEL","LEVEL2"]}
data modify storage file:path text set value "dungeongen:level/2"
data modify storage file:loot text set value "dungeon:loot_give/level2"
function dungeongen:generation/base_gen/v1/load
