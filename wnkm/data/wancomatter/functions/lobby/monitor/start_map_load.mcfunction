function wancomatter:map/0_replace_air
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 1 run function wancomatter:map/1_village
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 2 run function wancomatter:map/2_nether
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 3 run function wancomatter:map/3_bamboo
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 4 run function wancomatter:map/4_pylamid
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 5 run function wancomatter:map/5_iron_lab
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 6 run function wancomatter:map/6_river
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 7 run function wancomatter:map/7_ring
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 1 run function wancomatter:map/1_village
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 2 run function wancomatter:map/2_nether
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 3 run function wancomatter:map/3_bamboo
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 4 run function wancomatter:map/4_pylamid
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 5 run function wancomatter:map/5_iron_lab
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 6 run function wancomatter:map/6_river
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 7 run function wancomatter:map/7_ring
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 1 run function wancomatter:map/ex1_coldtemple
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 2..3 run function wancomatter:map/ex2_battlefield
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 4 run function wancomatter:map/ex3_necrofield
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 5 run function wancomatter:map/ex4_kamakura

