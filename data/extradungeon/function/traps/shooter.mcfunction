
scoreboard players add @s Timer 1

execute if entity @s[scores={Timer=1}] if block ~-1 ~ ~ dispenser run summon arrow ~ ~ ~ {damage:10d,Motion:[1.0,.1,0.0],Tags:["arrow"]}
execute if entity @s[scores={Timer=1}] if block ~1 ~ ~ dispenser run summon arrow ~ ~ ~ {damage:10d,Motion:[-1.0,.1,0.0],Tags:["arrow"]}
execute if entity @s[scores={Timer=1}] if block ~ ~ ~-1 dispenser run summon arrow ~ ~ ~ {damage:10d,Motion:[0.0,.1,1.0],Tags:["arrow"]}
execute if entity @s[scores={Timer=1}] if block ~ ~ ~1 dispenser run summon arrow ~ ~ ~ {damage:10d,Motion:[0.0,.1,-1.0],Tags:["arrow"]}

execute if entity @s[scores={Timer=50..}] run scoreboard players set @s Timer 0