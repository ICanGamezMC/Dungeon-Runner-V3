execute store result score @s MaxHealthADD run data get entity @s SelectedItem.components.minecraft:custom_data.Health
execute store result score @s MaxDefenseADD run data get entity @s SelectedItem.components.minecraft:custom_data.Defense
execute store result score @s MaxManaADD run data get entity @s SelectedItem.components.minecraft:custom_data.Mana

execute store result score @s Health_RegenADD run data get entity @s SelectedItem.components.minecraft:custom_data."Health Regen"
execute store result score @s Mana_RegenADD run data get entity @s SelectedItem.components.minecraft:custom_data."Mana Regen"
execute store result score @s LuckADD run data get entity @s SelectedItem.components.minecraft:custom_data.Luck
execute store result score @s WisdomADD run data get entity @s SelectedItem.components.minecraft:custom_data.Wisdom

#This is to set player to normal before and then add on the components
scoreboard players set @s MaxHealth 100
scoreboard players set @s MaxDefense 100
scoreboard players set @s MaxMana 100
scoreboard players set @s Health_Regen 1
scoreboard players set @s Mana_Regen 1
scoreboard players set @s Luck 1
scoreboard players set @s Wisdom 1

execute as @s run scoreboard players operation @s MaxHealth += @s MaxHealthADD
execute as @s run scoreboard players operation @s MaxDefense += @s MaxDefenseADD
execute as @s run scoreboard players operation @s MaxMana += @s MaxManaADD

execute as @s run scoreboard players operation @s Health_Regen += @s Health_RegenADD
execute as @s run scoreboard players operation @s Mana_Regen += @s Mana_RegenADD
execute as @s run scoreboard players operation @s Luck += @s LuckADD
execute as @s run scoreboard players operation @s Wisdom += @s WisdomADD

execute as @a at @s run scoreboard players operation @s Defense += @s Defense
execute as @a at @s run scoreboard players operation @s Defense < @s MaxDefense