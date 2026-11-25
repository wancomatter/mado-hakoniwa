kill @e[tag=monitorUI]
execute positioned 0 67.725 0 rotated 240 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:0b,Invulnerable:1b,Item:{count:1,id:"minecraft:redstone_torch"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUIcancel","wnkm.owned"],CustomName:{color:"aqua",text:"キャンセル"}}
execute positioned 0 67.725 0 rotated 270 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:1b,Glowing:1b,Invulnerable:1b,Item:{count:1,id:"minecraft:dirt"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUI13-0","monitorUIfocusing","wnkm.owned"],CustomName:{color:"aqua",text:"自動ランダムステージ変更"}}
execute positioned 0 67.725 0 rotated 300 0 run summon minecraft:item ^ ^ ^2 {Age:-32768s,CustomNameVisible:0b,Invulnerable:1b,Item:{count:1,id:"minecraft:red_wool"},NoGravity:1b,PickupDelay:-1s,Tags:["monitorUI","monitorUI13-1","wnkm.owned"],CustomName:{color:"aqua",text:"自動チーム振り分け"}}

execute if score #autostart_randomstage counter matches 1 as @e[tag=monitorUI13-0] at @s run data modify entity @s Item.components."minecraft:enchantment_glint_override" set value 1b
execute if score #teamModify subcounter matches 1 as @e[tag=monitorUI13-1] at @s run data modify entity @s Item.components."minecraft:enchantment_glint_override" set value 1b
