kill @e[tag=monitorUI]
execute positioned 0 67.725 0 rotated 090 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"キャンセル","color":"aqua"}',Tags:["monitorUI","monitorUIcancel"],Item:{id:"minecraft:redstone_torch",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:0b,Invulnerable:1b}
execute positioned 0 67.725 0 rotated 120 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"-1","color":"aqua"}',Tags:["monitorUI","monitorUI8-1"],Item:{id:"minecraft:lever",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:0b,Invulnerable:1b}
execute positioned 0 67.725 0 rotated 150 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"確定する","color":"aqua"}',Tags:["monitorUI","monitorUI8-0","monitorUIfocusing"],Item:{id:"minecraft:clock",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:1b,Glowing:1b,Invulnerable:1b}
execute positioned 0 67.725 0 rotated 180 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"+1","color":"aqua"}',Tags:["monitorUI","monitorUI8+1"],Item:{id:"minecraft:torch",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:0b,Invulnerable:1b}
scoreboard players operation #timeModify counter = #gametime subcounter
function wancomatter:lobby/monitor/time_show