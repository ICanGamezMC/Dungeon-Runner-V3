kill @e[type=item]
kill @e[tag=LEVEL]
summon marker 0 0 0 {Tags:["srn","sre","larn","lore","LEVEL"]}
data modify storage file:path text set value "1"
function dgen:generation/base_gen/v1/load
