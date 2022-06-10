kill @e[tag=monitorUI10-x]
execute store result score #dummy dummy run time query daytime
setblock 0 0 0 minecraft:oak_sign{Text1:'[{"text":"現在時刻:","color":"aqua"},{"score":{"name":"#dummy","objective":"dummy"}}]'} replace
execute positioned 0 68.225 0 rotated 210 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":" ","color":"aqua"}',Tags:["monitorUI","monitorUIdisplay","monitorUI10-x"],Item:{id:"minecraft:nether_star",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:1b,Invulnerable:1b}
execute as @e[tag=monitorUI10-x] run data modify entity @s CustomName set from block 0 0 0 Text1
setblock 0 0 0 minecraft:air