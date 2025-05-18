#This is function clear, this allows for no overlapping dungeons to spawn, basic clear function
function dungeongen:generation/base_gen/clear


#This is to set spawn

#World boarder and set spawn room set the base world gen to where the start is, and how far it is allowed to generate!
function dungeongen:generation/base_gen/v1/world_boarder
function dungeongen:generation/base_gen/v1/set_spawn_room
#This is a two step function so rooms only go out 2 other rooms, nothing more
function dungeongen:generation/base_gen/v1/step
function dungeongen:generation/base_gen/v1/step


#This summons a marker thats the world center for generating outward, KEEP THIS IN CAUSE IT WILL BREAK IF THERE IS NO ENTITY!!
summon marker 60 -40 60 {Tags:["start_point","clear"]}

function dungeongen:generation/base_gen/v1/end_step
#This end step translates and spawns the structures to where they should go

#This gets called when wanting to generate basic terrain.
#Please call this function and modify storage to setup more custom generation