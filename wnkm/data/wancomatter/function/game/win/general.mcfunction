effect give @a minecraft:luck 100 9 true
execute as @e[type=!player,tag=wnkm.owned,tag=!stable,tag=!monitorUI,tag=!monitorUIslime,tag=!spawnStand,tag=!firstspawnStand,tag=!boss] run function wnkm:entity/0.discard
gamerule mob_griefing false
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
scoreboard players set #gametime counter 55
worldborder set 1000000
