# Add extra commands you want here!
kill @e[tag=LEVEL]
summon marker 0 0 0 {Tags:["srn","srs","sre","srw","lorn","lors","lore","lorw","larn","lars","lare","larw","LEVEL"]}
data modify storage file:path text set value "dgen:level/demo"
function dgen:generation/base_gen/v1/load

# This is the //DEMO MAP// with //GENERATION VERSION 1//
# This is how every map should start out as, but you can add stuff before loading in the base room
# Adding stuff after and it gets iffy on what commands you do.
# 
# The tags go as follow ( 'Room type' , 'r for room' , ' Cardinal direction like e for east ' )
# 
#
#