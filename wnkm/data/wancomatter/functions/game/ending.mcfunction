#時刻設定
scoreboard players operation #dummy dummy = #timeModify subcounter
time set 0
execute if score #dummy dummy matches 16384.. run time add 16384
execute if score #dummy dummy matches 16384.. run scoreboard players remove #dummy dummy 16384
execute if score #dummy dummy matches 8192.. run time add 8192
execute if score #dummy dummy matches 8192.. run scoreboard players remove #dummy dummy 8192
execute if score #dummy dummy matches 4096.. run time add 4096
execute if score #dummy dummy matches 4096.. run scoreboard players remove #dummy dummy 4096
execute if score #dummy dummy matches 2048.. run time add 2048
execute if score #dummy dummy matches 2048.. run scoreboard players remove #dummy dummy 2048
execute if score #dummy dummy matches 1024.. run time add 1024
execute if score #dummy dummy matches 1024.. run scoreboard players remove #dummy dummy 1024
execute if score #dummy dummy matches 512.. run time add 512
execute if score #dummy dummy matches 512.. run scoreboard players remove #dummy dummy 512
execute if score #dummy dummy matches 256.. run time add 256
execute if score #dummy dummy matches 256.. run scoreboard players remove #dummy dummy 256
execute if score #dummy dummy matches 128.. run time add 128
execute if score #dummy dummy matches 128.. run scoreboard players remove #dummy dummy 128
execute if score #dummy dummy matches 64.. run time add 64
execute if score #dummy dummy matches 64.. run scoreboard players remove #dummy dummy 64
execute if score #dummy dummy matches 32.. run time add 32
execute if score #dummy dummy matches 32.. run scoreboard players remove #dummy dummy 32
execute if score #dummy dummy matches 16.. run time add 16
execute if score #dummy dummy matches 16.. run scoreboard players remove #dummy dummy 16
execute if score #dummy dummy matches 8.. run time add 8
execute if score #dummy dummy matches 8.. run scoreboard players remove #dummy dummy 8
execute if score #dummy dummy matches 4.. run time add 4
execute if score #dummy dummy matches 4.. run scoreboard players remove #dummy dummy 4
execute if score #dummy dummy matches 2.. run time add 2
execute if score #dummy dummy matches 2.. run scoreboard players remove #dummy dummy 2
execute if score #dummy dummy matches 1.. run time add 1
execute if score #dummy dummy matches 1.. run scoreboard players remove #dummy dummy 1

scoreboard objectives remove total_dealt
scoreboard objectives remove total_taken
scoreboard objectives remove lifestock
effect clear @a minecraft:glowing

gamerule mobGriefing false
title @a times 10 80 10
title @a title [{"text":"††","obfuscated":true,"color":"white"},{"text":" Game Over...","obfuscated":false,"color":"white"},{"text":"††","obfuscated":true,"color":"white"}]
bossbar set wnkm:gametime visible false
worldborder set 140 7
clear @a minecraft:leather_helmet{teamArmor:1b}
effect clear @a minecraft:luck
effect give @a minecraft:luck 9 9 true
effect give @a minecraft:blindness 8 127 true
gamerule mobGriefing false
gamerule doDaylightCycle false
playsound minecraft:block.end_portal.spawn master @a 0 -100 0 0 0.5 1
scoreboard players set @a HP 2147483647
tag @a[scores={deathTimer=-40..}] remove noMob
scoreboard players reset @a[scores={deathTimer=-40..}] deathTimer
gamemode adventure @a
schedule function wancomatter:game/lobby_first 120t