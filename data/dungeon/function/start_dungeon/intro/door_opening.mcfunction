#This is animation
tp @s[scores={Timer=..180}] ^ ^ ^ ~.5 ~
scoreboard players add @s Timer 1


#This is tp function
execute as @s[scores={Timer=300..301}] at @s as @a[distance=..7] at @s run function dungeon:start_dungeon/tp

#This is to setup the dungeon
execute as @s[scores={Timer=300..302}] if entity @e[tag=NIGHT] run time set night
execute as @s[scores={Timer=300..302}] run kill @e[type=item]

#This is end of animation
tp @s[scores={Timer=320..}] ^ ^ ^ 0 0