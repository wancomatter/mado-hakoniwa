kill @e[tag=monitorUI10-x]
execute store result score #dummy dummy run time query minecraft:day
setblock 0 0 0 minecraft:oak_sign{Text1:'[{"text":"現在時刻:","color":"aqua"},{"score":{"name":"#dummy","objective":"dummy"}}]'} replace
execute positioned 0 68.225 0 rotated 210 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:1b,Invulnerable:1b,Item:{count:1,id:"minecraft:nether_star"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUIdisplay","monitorUI10-x","wnkm.owned"],CustomName:{color:"aqua",text:" "}}
execute as @e[tag=monitorUI10-x] run data modify entity @s CustomName set from block 1024 0 1024 Text1
setblock 1024 0 1024 minecraft:air
