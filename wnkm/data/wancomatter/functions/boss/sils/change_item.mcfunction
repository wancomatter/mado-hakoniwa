execute if score @s dummy matches 1 run data modify entity @s HandItems set value [{id:"minecraft:diamond_sword",Count:1b},{}]
execute if score @s dummy matches 2 run data modify entity @s HandItems set value [{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{id:"minecraft:arrow",Count:1b}]
execute if score @s dummy matches 3 run data modify entity @s HandItems set value [{id:"minecraft:trident",Count:1b},{}]
execute if score @s dummy matches 4 run data modify entity @s HandItems set value [{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:112}},{}]
execute if score @s dummy matches 5 run data modify entity @s HandItems set value [{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}},{}]
execute if score @s dummy matches 6 run data modify entity @s HandItems set value [{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:47}},{}]

execute if score @s dummy matches 1 run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 5 1
execute if score @s dummy matches 2 run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 5 0.5
execute if score @s dummy matches 3 run playsound minecraft:item.trident.return master @a ~ ~ ~ 5 1
execute if score @s dummy matches 4 run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 5 0.5
execute if score @s dummy matches 5 run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 5 1
execute if score @s dummy matches 6 run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 5 2