kill @e[tag=monitorUI]
execute positioned 0 67.725 0 rotated 090 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:0b,Invulnerable:1b,Item:{count:1,id:"minecraft:redstone_torch"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUIcancel","wnkm.owned"],CustomName:{color:"aqua",text:"キャンセル"}}
execute positioned 0 67.725 0 rotated 120 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:0b,Invulnerable:1b,Item:{count:1,id:"minecraft:lever"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUI8-1","wnkm.owned"],CustomName:{color:"aqua",text:"-1"}}
execute positioned 0 67.725 0 rotated 150 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:1b,Glowing:1b,Invulnerable:1b,Item:{count:1,id:"minecraft:clock"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUI8-0","monitorUIfocusing","wnkm.owned"],CustomName:{color:"aqua",text:"確定する"}}
execute positioned 0 67.725 0 rotated 180 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:0b,Invulnerable:1b,Item:{count:1,id:"minecraft:torch"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUI8+1","wnkm.owned"],CustomName:{color:"aqua",text:"+1"}}
scoreboard players operation #timeModify counter = #gametime subcounter
function wancomatter:lobby/monitor/time_show
