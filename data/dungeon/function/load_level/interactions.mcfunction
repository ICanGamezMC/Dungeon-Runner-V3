
#This is for a tutorial
execute as @a at @s if entity @s[tag=Tutorial,scores={Step=1}] run scoreboard players set @s Step 2

#This is the generic "all levels should do this" Function
kill @e[tag=clear2]
kill @e[tag=Distance]

#This is the levels
execute if entity @s[tag=Level1] run function dungeongen:levels/built_in/level_1
execute if entity @s[tag=Level1] run tellraw @a ["",{"text":"Charting For \"","bold":true,"color":"blue"},{"text":" The Forest ","bold":true,"color":"dark_green"},{"text":"\"","bold":true,"color":"blue"}]


execute if entity @s[tag=Level2] if entity @e[tag=L1] if entity @a[sort=nearest,limit=1,scores={Level=3..}] run function dungeongen:levels/built_in/level_2
execute if entity @s[tag=Level2] if entity @e[tag=L1] if entity @a[sort=nearest,limit=1,scores={Level=3..}] run tellraw @a ["",{"text":"Charting For \"","bold":true,"color":"blue"},{"text":" The Caverns ","bold":true,"color":"dark_green"},{"text":"\"","bold":true,"color":"blue"}]


execute if entity @s[tag=Level3] if entity @e[tag=L2] if entity @a[sort=nearest,limit=1,scores={Level=5..}] run function dungeongen:levels/built_in/level_3
execute if entity @s[tag=Level3] if entity @e[tag=L2] if entity @a[sort=nearest,limit=1,scores={Level=5..}] run tellraw @a ["",{"text":"Charting For \"","bold":true,"color":"blue"},{"text":" The Desert","bold":true,"color":"dark_green"},{"text":"\"","bold":true,"color":"blue"}]















#This is for players, and yeah ik having it in a load level function is weird but just go with it trust

execute if entity @s[tag=Player1] run tellraw @p ["",{"text":"<Parker> I helped with item generation, ","color":"white"},{"text":"Click Here for the code","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/ParkersOnGit/Anvil"}}]
execute if entity @s[tag=Player2] run tellraw @p ["",{"text":"<ICanGamez> I am the lead developer of this datapack, ","color":"white"},{"text":"Click here for more datapacks!","color":"white","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/ICanGamez"}}]
execute if entity @s[tag=Player3] run tellraw @p ["",{"text":"<Torrezx> I made lots of pixel art for this datapack, ","color":"white"},{"text":"Click here for my Twitter!","color":"white","clickEvent":{"action":"open_url","value":"https://x.com/TorrezxMC?ref_src=twsrc%5Etfw"}}]
execute if entity @s[tag=Player4] run tellraw @p ["",{"text":"<ButterScotch> I am basically mozart, ","color":"white"},{"text":"Click here for more music like stuff you heard here!","color":"white","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@ButterScotch210"}}]






#This would be for sound
playsound minecraft:entity.experience_orb.pickup record @a ~ ~ ~ 25 1 1

#This is to reset interactions
data remove entity @s interaction

