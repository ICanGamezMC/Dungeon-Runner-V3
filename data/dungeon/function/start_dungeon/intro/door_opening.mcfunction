#This is animation
tp @s[scores={Timer=..180}] ^ ^ ^ ~.5 ~
scoreboard players add @s Timer 1

execute as @s[scores={Timer=10..301}] at @s as @a[distance=..7] at @s run particle minecraft:squid_ink 62.92 -35.00 -8.67 0.5 3 0.5 0 20 normal
#This is tp function

execute as @s[scores={Timer=20}] at @s as @a[distance=..7] at @s run playsound minecraft:entity.panda.pre_sneeze block @s ~ ~ ~ 100 1 1
execute as @s[scores={Timer=300..301}] at @s as @a[distance=..7] at @s run function dungeon:start_dungeon/tp


#This is end of animation
tp @s[scores={Timer=310..490}] ^ ^ ^ ~-.5 ~
tp @s[scores={Timer=491..}] ^ ^ ^ 0 0