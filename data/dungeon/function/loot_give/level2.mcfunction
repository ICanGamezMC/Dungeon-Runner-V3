execute as @s store result score @s RNG1 run random value 1..20
execute as @s store result score @s RNG1 run scoreboard players operation @s RNG1 += @s Luck
playsound minecraft:entity.experience_orb.pickup record @a ~ ~ ~ 100 0 1
execute as @s store result score @s Experience_ADD run random value 14..39
execute as @s store result score @s Experience_ADD run scoreboard players operation @s Experience_ADD += @s Wisdom
tellraw @s ["",{"text":"Gained ","bold":true,"color":"white"},{"score":{"name":"@s","objective":"Experience_ADD"},"bold":true,"color":"blue"},{"text":" Experience","bold":true,"color":"white"}]


execute as @s[scores={RNG1=1..3}] run tellraw @s {"text":"Flame Seeker Scroll","bold":true,"color":"green"}
execute as @s[scores={RNG1=1..3}] run loot give @s loot dungeon:items/level/2/flame_seeker_scroll
execute as @s[scores={RNG1=4..6}] run tellraw @s {"text":"Stone Chestplate","bold":true,"color":"green"}
execute as @s[scores={RNG1=4..6}] run loot give @s loot dungeon:items/level/2/stone_chestplate
execute as @s[scores={RNG1=7..11}] run tellraw @s {"text":"Stone Helmet","bold":true,"color":"green"}
execute as @s[scores={RNG1=7..11}] run loot give @s loot dungeon:items/level/2/stone_helmet
execute as @s[scores={RNG1=12..15}] run tellraw @s {"text":"Stone Leggings","bold":true,"color":"green"}
execute as @s[scores={RNG1=12..15}] run loot give @s loot dungeon:items/level/2/stone_leggings
execute as @s[scores={RNG1=16..19}] run tellraw @s {"text":"Stone Boots","bold":true,"color":"green"}
execute as @s[scores={RNG1=16..19}] run loot give @s loot dungeon:items/level/2/stone_boots
execute as @s[scores={RNG1=20}] run tellraw @s {"text":"Farmer Hat","bold":true,"color":"green"}
execute as @s[scores={RNG1=20}] run loot give @s loot dungeon:items/level/2/farmer_hat
execute as @s[scores={RNG1=21..23}] run tellraw @s {"text":"Farmer Hat","bold":true,"color":"green"}
execute as @s[scores={RNG1=21..23}] run loot give @s loot dungeon:items/level/2/flowering_axe
execute as @s[scores={RNG1=24..}] run tellraw @s {"text":"Farmer Hat","bold":true,"color":"green"}
execute as @s[scores={RNG1=24..}] run loot give @s loot dungeon:items/level/2/flowering_sword