kill @e[tag=LEVEL]
summon marker 0 0 0 {Tags:["srn","srs","sre","srw","lorn","lors","lore","lorw","larn","lars","lare","larw","LEVEL"]}
data modify storage file:path text set value "demo"
function dgen:generation/base_gen/v1/load
