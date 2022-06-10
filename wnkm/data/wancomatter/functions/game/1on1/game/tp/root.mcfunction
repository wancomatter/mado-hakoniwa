execute if score @s dummy matches 1 run function wancomatter:game/1on1/game/tp/1_ruin
execute if score @s dummy matches 2 run function wancomatter:game/1on1/game/tp/2_dream
execute if score @s dummy matches 3 run function wancomatter:game/1on1/game/tp/3_mine
execute if score @s dummy matches 4 run function wancomatter:game/1on1/game/tp/4_cake
scoreboard players operation @e[tag=this] dummy = @s dummy

team leave @a[tag=1on1_battle_countdown]
gamemode adventure @a[tag=1on1_battle_countdown]
execute at @a[tag=1on1_battle_countdown] run particle minecraft:portal ~ ~1 ~ 1 1 1 0 25 force @a
execute at @a[tag=1on1_battle_countdown] run particle minecraft:portal ~ ~1 ~ 1 1 1 0 100 normal @a
execute at @a[tag=1on1_battle_countdown] run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.7
execute at @a[tag=1on1_battle_countdown] run particle flash ~ ~1 ~ 0.2 0.2 0.2 1 1 force @a
execute at @a[tag=1on1_battle_countdown] run particle flash ~ ~1 ~ 0.2 0.2 0.2 1 4 normal @a
clear @a[tag=1on1_battle_countdown] minecraft:leather_helmet{teamArmor:1b}

execute at @e[tag=this] run fill ~-1 ~ ~-1 ~1 ~4 ~1 white_stained_glass hollow
tag @a[tag=1on1_battle_countdown,limit=1,sort=random] add r
execute at @e[tag=this,tag=1on1_spawn_1,limit=1] run tp @a[tag=1on1_battle_countdown,tag=r] ~ ~1.5 ~ ~ ~
execute at @e[tag=this,tag=1on1_spawn_2,limit=1] run tp @a[tag=1on1_battle_countdown,tag=!r] ~ ~1.5 ~ ~ ~
tag @a[tag=r] remove r
execute as @a[tag=1on1_battle_countdown] run scoreboard players operation @s pvpteamsaver = @s teamNumber
team join Pink @a[tag=1on1_battle_countdown,limit=1,sort=random]
team join Gold @a[tag=1on1_battle_countdown,team=!Pink]
title @a[tag=1on1_battle_countdown] times 0 50 25

execute if score @s dummy matches 1 positioned 40 25 -40 run bossbar set wnkm:1on1/ruins players @a[dx=70,dy=50,dz=80]
execute if score @s dummy matches 2 positioned -110 25 -40 run bossbar set wnkm:1on1/mountain players @a[dx=70,dy=50,dz=80]
execute if score @s dummy matches 3 positioned -40 25 39 run bossbar set wnkm:1on1/mine players @a[dx=80,dy=50,dz=70]
execute if score @s dummy matches 4 positioned -40 25 -120 run bossbar set wnkm:1on1/cake players @a[dx=80,dy=50,dz=80]


tag @e[tag=this] remove this

