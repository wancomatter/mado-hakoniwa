kill @e[tag=monitorUI]
execute positioned 0 67.725 0 rotated 210 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"キャンセル","color":"aqua"}',Tags:["monitorUI","monitorUIcancel"],Item:{id:"minecraft:redstone_torch",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:0b,Invulnerable:1b}
execute positioned 0 67.725 0 rotated 240 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"確定する","color":"aqua"}',Tags:["monitorUI","monitorUI12-0","monitorUIfocusing"],Item:{id:"minecraft:ender_pearl",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:1b,Glowing:1b,Invulnerable:1b}
execute positioned 0 67.725 0 rotated 270 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"与ダメージ量","color":"aqua"}',Tags:["monitorUI","monitorUI12-0switch","monitorUI12-1"],Item:{id:"minecraft:diamond_sword",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:0b,Invulnerable:1b}
execute positioned 0 67.725 0 rotated 300 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"被ダメージ量","color":"aqua"}',Tags:["monitorUI","monitorUI12-0switch","monitorUI12-2"],Item:{id:"minecraft:shield",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:0b,Invulnerable:1b}

execute if score #result_setting Cooldown1 matches 1 as @e[tag=monitorUI12-1] at @s run function wancomatter:lobby/monitor/result/switch
execute if score #result_setting Cooldown2 matches 1 as @e[tag=monitorUI12-2] at @s run function wancomatter:lobby/monitor/result/switch
