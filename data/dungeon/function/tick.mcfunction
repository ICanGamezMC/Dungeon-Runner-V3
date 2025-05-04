

# This is for keeping the players stats alive and running, also keep the player aline with custom health
function dungeon:player_stats/tick

function ability:trigger_ability
execute if entity @e[tag=load_rooms] run function dgen:generation/base_gen/v1/repeat_place

