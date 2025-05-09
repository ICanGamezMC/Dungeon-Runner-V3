execute as @a at @s unless entity @s[scores={Cooldown=..0}] run scoreboard players remove @s Cooldown 1
schedule function dungeon:player_stats/cooldown 1s

#THIS IS STORE DATA CMD data get entity @e[limit=1,sort=nearest,type=item] Item.components."minecraft:custom_name"