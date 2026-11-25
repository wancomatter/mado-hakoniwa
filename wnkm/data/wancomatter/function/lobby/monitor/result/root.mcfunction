kill @e[tag=monitorUI]
execute positioned 0 67.725 0 rotated 210 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:0b,Invulnerable:1b,Item:{count:1,id:"minecraft:redstone_torch"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUIcancel","wnkm.owned"],CustomName:{color:"aqua",text:"キャンセル"}}
execute positioned 0 67.725 0 rotated 240 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:1b,Glowing:1b,Invulnerable:1b,Item:{count:1,id:"minecraft:ender_pearl"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUI12-0","monitorUIfocusing","wnkm.owned"],CustomName:{color:"aqua",text:"確定する"}}
execute positioned 0 67.725 0 rotated 270 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:0b,Invulnerable:1b,Item:{count:1,id:"minecraft:diamond_sword"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUI12-0switch","monitorUI12-1","wnkm.owned"],CustomName:{color:"aqua",text:"与ダメージ量"}}
execute positioned 0 67.725 0 rotated 300 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:0b,Invulnerable:1b,Item:{count:1,id:"minecraft:shield"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUI12-0switch","monitorUI12-2","wnkm.owned"],CustomName:{color:"aqua",text:"被ダメージ量"}}

execute if score #result_setting Cooldown1 matches 1 as @e[tag=monitorUI12-1] at @s run function wancomatter:lobby/monitor/result/switch
execute if score #result_setting Cooldown2 matches 1 as @e[tag=monitorUI12-2] at @s run function wancomatter:lobby/monitor/result/switch
