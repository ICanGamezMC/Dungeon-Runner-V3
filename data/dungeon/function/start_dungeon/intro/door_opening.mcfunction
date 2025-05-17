#This is animation
tp @s[scores={Timer=..180}] ^ ^ ^ ~.5 ~
scoreboard players add @s Timer 1


#This is tp function
execute as @s[scores={Timer=300..}] run function dungeon:start_dungeon/tp

#This is end of animation
tp @s[scores={Timer=320..}] ^ ^ ^ 0 0