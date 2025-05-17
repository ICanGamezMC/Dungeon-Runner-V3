

kill @e[tag=LEVEL]
summon marker 0 0 0 {Tags:["srn","sre","larn","lars","lorn","lorw","larw","lore","lors","LEVEL","NIGHT"]}
data modify storage file:path text set value "dgen:level/1"
function dgen:generation/base_gen/v1/load
