execute as @s store result score @s RNG1 run random value 1..2

execute as @s[scores={RNG1=1}] run summon zombie ~ ~ ~ {Health:10,Tags:["clear2","enemy"],equipment:{mainhand:{id:air},offhand:{id:air},head:{id:air},chest:{id:air},legs:{id:air},feet:{id:air}},attributes:[{id:max_health,base:10f}]}
execute as @s[scores={RNG1=2}] run summon zombie ~ ~ ~ {Tags:["clear2","enemy"],HandItems:[{id:cobblestone,components:{attribute_modifiers:{modifiers:[{type:attack_damage,amount:2,operation:add_value,id:1747691192066}]},item_model:"dungeon:custom_item/basic_stick"},count:1},{id:air}],ArmorItems:[{id:air},{id:air},{id:air},{id:air}]}

kill @s