
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

#This loads in the spawn
place template dgen:level/world_base/part2 -10 -40 -54
place template dgen:level/world_base/part1 38 -40 -54

#This is important for the world, keeps data in and loads in the world correctly
summon marker 0 0 0 {Tags:["World"]}


