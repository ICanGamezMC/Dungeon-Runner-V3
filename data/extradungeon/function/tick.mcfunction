

#This is for traps
execute as @e[tag=trap] at @s run function extradungeon:traps/trap_tick

#This is for leveling
function extradungeon:leveling/exp
function extradungeon:leveling/levels

execute as @a store result storage level:display level int 1 run scoreboard players get @s Level
execute as @a run function extradungeon:leveling/display with storage level:display