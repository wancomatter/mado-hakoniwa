kill @e[tag=kiritostand]
#summon minecraft:armor_stand 0 7 0 {Tags:["kiritostand"],Marker:1b,NoGravity:1b,NoBasePlate:1b,ShowArms:1b,Team:"Black",CustomName:"{\"text\":\"漆黒の剣士\",\"color\":\"black\",\"bold\":true}",CustomNameVisible:1b,Glowing:1b,HandItems:[{tag:{CustomModelData:113},id:"minecraft:carrot_on_a_stick",Count:1b},{tag:{CustomModelData:1,Enchantments:[{}]},id:"minecraft:fishing_rod",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1119010}}},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1119010}}},{id:"minecraft:skeleton_skull",Count:1b}]}
summon minecraft:armor_stand 0 7 0 {Tags:["kiritostand"],Invisible:1b,NoBasePlate:1b,ShowArms:1b,Team:"Black",CustomName:"{\"text\":\"漆黒の剣士\",\"color\":\"black\",\"bold\":true}",Glowing:1b,HandItems:[{tag:{CustomModelData:113},id:"minecraft:carrot_on_a_stick",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1119010}}},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1119010}}},{}]}
#summon minecraft:armor_stand 0 7 0 {Tags:["kiritostand"],Marker:1b,NoGravity:1b,NoBasePlate:1b,ShowArms:1b,Team:"Black",CustomName:"{\"text\":\"漆黒の剣士\",\"color\":\"black\",\"bold\":true}",Glowing:1b,HandItems:[{tag:{CustomModelData:113},id:"minecraft:carrot_on_a_stick",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1119010}}},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1119010}}},{}]}
data modify entity @e[tag=kiritostand,limit=1] Pose.RightArm set value [0.0f,0.0f,0.0f]
data modify entity @e[tag=kiritostand,limit=1] Pose.LeftArm set value [0.0f,0.0f,0.0f]