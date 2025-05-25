
execute as @a if entity @s[scores={Damage=..0,Regen_Timer=1..}] run scoreboard players remove @s Regen_Timer 1


#This just adds health and mana by 1 unless player has more than 1 of the regen varient
execute as @a as @s[scores={Damage=..0,Regen_Timer=0}] run scoreboard players operation @s Health += @s Health_Regen
execute as @a as @s[scores={Damage=..0,Regen_Timer=0}] run scoreboard players operation @s Health < @s MaxHealth

execute as @a as @s[scores={Damage=..0,Regen_Timer=0}] run scoreboard players operation @s Mana += @s Mana_Regen
execute as @a as @s[scores={Damage=..0,Regen_Timer=0}] run scoreboard players operation @s Mana < @s MaxMana
#This just repeats every 10 ticks or half a second
schedule function dungeon:player_stats/regen 10