
#This is gamerule functions
gamerule doFireTick false
gamerule randomTickSpeed 0
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule mobGriefing false
gamerule keepInventory true
gamerule doMobSpawning false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule doMobLoot false

#This loads in the spawn
place template dungeongen:level/world_base/part6 -10 -51 -54
place template dungeongen:level/world_base/part2 -10 -40 -54
place template dungeongen:level/world_base/part1 38 -40 -54


reload


















#This is important for the world, keeps data in and loads in the world correctly
execute if block 85 -39 -7 minecraft:bedrock run summon marker 0 0 0 {Tags:["World"]}


