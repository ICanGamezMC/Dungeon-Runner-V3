

$execute as @s[tag=large_room_north] at @s run place template dgen:level/$(text)/large_room_north ~ ~ ~-1
$execute as @s[tag=large_room_south] at @s run place template dgen:level/$(text)/large_room_south ~ ~ ~
$execute as @s[tag=large_room_east] at @s run place template dgen:level/$(text)/large_room_east ~ ~ ~
$execute as @s[tag=large_room_west] at @s run place template dgen:level/$(text)/large_room_west ~-1 ~ ~

$execute as @s[tag=long_room_north] at @s run place template dgen:level/$(text)/long_room_north ~ ~ ~-1
$execute as @s[tag=long_room_south] at @s run place template dgen:level/$(text)/long_room_south ~ ~ ~
$execute as @s[tag=long_room_east] at @s run place template dgen:level/$(text)/long_room_east ~ ~ ~
$execute as @s[tag=long_room_west] at @s run place template dgen:level/$(text)/long_room_west ~-1 ~ ~

$execute as @s[tag=small_room_north] at @s run place template dgen:level/$(text)/small_room_north
$execute as @s[tag=small_room_south] at @s run place template dgen:level/$(text)/small_room_south
$execute as @s[tag=small_room_east] at @s run place template dgen:level/$(text)/small_room_east
$execute as @s[tag=small_room_west] at @s run place template dgen:level/$(text)/small_room_west

kill @s
