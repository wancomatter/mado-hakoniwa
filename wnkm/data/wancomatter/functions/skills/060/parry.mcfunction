tag @e[tag=hurtBy,limit=1] add 060
tag @e[tag=hurtBy] remove hurtBy
tag @s remove hurt

playsound minecraft:item.totem.use master @a ~ ~ ~ 1.2 0.94
particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 1 160 normal @a
particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 1 40 force @a
execute at @e[tag=060] run playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 2 0.8
execute at @e[tag=060] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
execute at @e[tag=060] run particle minecraft:dust 0.3 0.1 0.4 4 ~ ~1 ~ 0.3 0.3 0.3 1 40 normal @a
execute at @e[tag=060] run particle minecraft:dust 0.3 0.1 0.4 4 ~ ~1 ~ 0.3 0.3 0.3 1 10 force @a
execute at @e[tag=060] run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.3 600 normal @a
execute at @e[tag=060] run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.3 150 force @a
execute at @e[tag=060] run particle minecraft:sweep_attack ~ ~ ~ 2 0.1 2 1 80 normal @a
execute at @e[tag=060] run particle minecraft:sweep_attack ~ ~ ~ 2 0.1 2 1 20 force @a

tag @e[tag=060,tag=p.death_counter] remove p.death_counter
scoreboard players operation @s Mana -= @s dummy
scoreboard players operation @e[tag=060] damageTaken = @s damageTaken
tag @e[tag=060] add trueDamage
scoreboard players set @e[tag=060] hurtWeaponNumber 60
scoreboard players operation @s HPheal = @s damageTaken
scoreboard players set @s damageTaken 0
effect give @s luck 1 9
tag @s remove p.death_counter
tag @s add hurtBy
execute as @e[tag=060] run function wancomatter:general/damagetaken/main
tp @s @s
tag @s add parry_antikb
tag @e[tag=060] remove 060

scoreboard players set @s dummy 400
scoreboard players operation @s dummy *= @s statCTAmount
scoreboard players operation @s dummy /= #1000 counter

execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}} run scoreboard players operation @s CooldownX += @s dummy
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}} run scoreboard players operation @s CooldownX_max += @s dummy
execute if data entity @s {Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown1 += @s dummy
execute if data entity @s {Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown1_max += @s dummy
execute if data entity @s {Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown2 += @s dummy
execute if data entity @s {Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown2_max += @s dummy
execute if data entity @s {Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown3 += @s dummy
execute if data entity @s {Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown3_max += @s dummy
execute if data entity @s {Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown4 += @s dummy
execute if data entity @s {Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown4_max += @s dummy
execute if data entity @s {Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown5 += @s dummy
execute if data entity @s {Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown5_max += @s dummy
execute if data entity @s {Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown6 += @s dummy
execute if data entity @s {Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown6_max += @s dummy
execute if data entity @s {Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown7 += @s dummy
execute if data entity @s {Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown7_max += @s dummy
execute if data entity @s {Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown8 += @s dummy
execute if data entity @s {Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown8_max += @s dummy
execute if data entity @s {Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown9 += @s dummy
execute if data entity @s {Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}]} run scoreboard players operation @s Cooldown9_max += @s dummy
scoreboard players reset #dummy dummy