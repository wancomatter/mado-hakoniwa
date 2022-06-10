effect give @a minecraft:luck 100 9 true
kill @e[tag=!stable,tag=!spawnStand,type=!player,tag=!monitorUI,tag=!monitorUIslime,tag=!boss]
gamerule mobGriefing false
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
scoreboard players set #gametime counter 55
worldborder set 1000000