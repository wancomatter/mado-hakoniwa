loot spawn 0 0 0 loot wancomatter:random_stage
execute as @e[type=minecraft:item,tag=!isItem] if data entity @s {Item:{tag:{randomStageRand:1b}}} store result score #randomSwitch counter run data get entity @s Item.tag.randomStageID 1
execute as @e[type=minecraft:item,tag=!isItem] if data entity @s {Item:{tag:{randomStageRand:1b}}} run kill @s
execute if score #randomSwitch counter matches 1 if score #randomSwitch Cooldown1 matches 1 unless score #randomSwitch counter = #stagechanged subcounter run function wancomatter:lobby/monitor/stage/1_village
execute if score #randomSwitch counter matches 2 if score #randomSwitch Cooldown2 matches 1 unless score #randomSwitch counter = #stagechanged subcounter run function wancomatter:lobby/monitor/stage/2_nether
execute if score #randomSwitch counter matches 3 if score #randomSwitch Cooldown3 matches 1 unless score #randomSwitch counter = #stagechanged subcounter run function wancomatter:lobby/monitor/stage/3_bamboo
execute if score #randomSwitch counter matches 4 if score #randomSwitch Cooldown4 matches 1 unless score #randomSwitch counter = #stagechanged subcounter run function wancomatter:lobby/monitor/stage/4_pylamid
execute if score #randomSwitch counter matches 5 if score #randomSwitch Cooldown5 matches 1 unless score #randomSwitch counter = #stagechanged subcounter run function wancomatter:lobby/monitor/stage/5_iron_lab
execute if score #randomSwitch counter matches 6 if score #randomSwitch Cooldown6 matches 1 unless score #randomSwitch counter = #stagechanged subcounter run function wancomatter:lobby/monitor/stage/6_river
execute if score #randomSwitch counter matches 7 if score #randomSwitch Cooldown7 matches 1 unless score #randomSwitch counter = #stagechanged subcounter run function wancomatter:lobby/monitor/stage/7_altar
scoreboard players reset #randomSwitch counter
execute if score #stagechanged counter matches 2 run function wancomatter:lobby/monitor/stage/random
