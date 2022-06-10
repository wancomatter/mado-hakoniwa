playsound minecraft:entity.wither.spawn master @a 0 8 0 50 0.5
tellraw @a {"text":"[WARNING] 戦闘エリアが縮小します･･････","color":"dark_red","bold":true}
bossbar set wnkm:gametime visible false

worldborder center 0 0
worldborder set 137
worldborder warning time 0
worldborder warning distance 5
worldborder damage buffer 0
worldborder damage amount 1
worldborder set 27 55
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 3 run worldborder set 33 55
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 4 run worldborder set 21 55