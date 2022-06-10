kill @e[tag=monitorUI]
execute positioned 0 67.725 0 rotated 240 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"キャンセル","color":"aqua"}',Tags:["monitorUI","monitorUIcancel"],Item:{id:"minecraft:redstone_torch",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:0b,Invulnerable:1b}
execute positioned 0 67.725 0 rotated 270 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"自動ランダムステージ変更","color":"aqua"}',Tags:["monitorUI","monitorUI13-0","monitorUIfocusing"],Item:{id:"minecraft:dirt",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:1b,Glowing:1b,Invulnerable:1b}
execute positioned 0 67.725 0 rotated 300 0 run summon minecraft:item ^ ^ ^2 {CustomName:'{"text":"自動チーム振り分け","color":"aqua"}',Tags:["monitorUI","monitorUI13-1"],Item:{id:"minecraft:red_wool",Count:1b},NoGravity:1b,Age:-32768s,PickupDelay:-1s,CustomNameVisible:0b,Invulnerable:1b}

execute if score #autostart_randomstage counter matches 1 as @e[tag=monitorUI13-0] at @s run data modify entity @s Item.tag.Enchantments set value [{}]
execute if score #teamModify subcounter matches 1 as @e[tag=monitorUI13-1] at @s run data modify entity @s Item.tag.Enchantments set value [{}]