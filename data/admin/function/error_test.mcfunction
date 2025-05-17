
tellraw @a ["",{"text":"TESTING : ","bold":true,"color":"dark_green"},{"text":"","bold":true,"color":"red"},{"text":"Results will be in Shortly, ","bold":true,"color":"dark_gray"}]

scoreboard players set NUMBER error 0
execute unless function admin:errors/item_ability_error run scoreboard players set NUMBER error 1
execute unless score NUMBER error matches 1 run tellraw @a ["",{"text":"ERROR 001","bold":true,"color":"red"},{"text":" : ADMIN TESTING ERROR  ","bold":true,"color":"red"},{"text":" { Check File for corruption }","bold":true,"color":"dark_red"}]

scoreboard players set NUMBER error 0
execute unless function admin:errors/room_gen_error run scoreboard players set NUMBER error 1
execute unless score NUMBER error matches 1 run tellraw @a ["",{"text":"ERROR 002","bold":true,"color":"red"},{"text":" : ROOM GEN TESTING ERROR  ","bold":true,"color":"red"},{"text":" { Check File for corruption }","bold":true,"color":"dark_red"}]




