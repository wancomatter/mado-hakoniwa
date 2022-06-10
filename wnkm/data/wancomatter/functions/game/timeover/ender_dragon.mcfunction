playsound minecraft:entity.wither.spawn master @a 0 8 0 50 1
tellraw @a {"text":"[WARNING] エンダードラゴン襲来！！","color":"dark_red","bold":true}
bossbar set wnkm:gametime visible false
gamerule mobGriefing true
summon ender_dragon 0 30 0 {Invulnerable:1b,DragonPhase:2}
execute if score #timeover_setting counter matches 2 run effect give @a[gamemode=adventure] minecraft:glowing 1000000 127 true