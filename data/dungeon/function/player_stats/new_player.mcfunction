scoreboard players set @s Health 100
scoreboard players set @s Defense 100
scoreboard players set @s Mana 100
scoreboard players set NUMBER 10 10
scoreboard players set @s DamageMath 1
scoreboard players set @s Cooldown 1
scoreboard players set @s Regen_Timer 1
#This should be called when a player joins the game
effect give @s minecraft:saturation infinite 100 true

#This should be an attribute for not taking any real damage
attribute @s minecraft:armor base set 10000

#This is for giving items and advancements, pretty snazzy right?
loot give @s loot dungeon:items/weapons/basic_stick
advancement grant @s only extradungeon:story


#This is if they want to do a tutorial
tellraw @s {"text":"Run Tutorial?","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/tag @s add Tutorial"}}
playsound entity.experience_orb.pickup record @s ~ ~ ~ 100 1 1
#This is for only ticking once per player
tag @s add First_Join