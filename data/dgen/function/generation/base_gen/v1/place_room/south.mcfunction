execute if entity @s[scores={RNG1=1..2}] if block ~ ~ ~ air run place template dgen:generation/v1/small_room_south ~-1 ~ ~-1
execute if entity @s[scores={RNG1=3..4}] if block ~ ~ ~ air if block ~ ~ ~1 air run place template dgen:generation/v1/long_room_south ~-1 ~ ~-1
execute if entity @s[scores={RNG1=5}] if block ~ ~ ~ air if block ~ ~ ~1 air if block ~1 ~ ~1 air if block ~1 ~ ~ air run place template dgen:generation/v1/large_room_south ~-1 ~ ~-1
