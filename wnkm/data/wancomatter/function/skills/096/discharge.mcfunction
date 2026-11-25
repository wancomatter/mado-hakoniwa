scoreboard players remove @s Mana 1
execute at @s run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 2 2

scoreboard players add @s dummy 1
execute unless score @s dummy matches 96..99 run scoreboard players set @s dummy 96
fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
execute if entity @s[scores={dummy=96}] run loot replace block 1024 0 1024 container.0 loot wancomatter:items/meele_weapons/magical_rod
execute if entity @s[scores={dummy=97}] run loot replace block 1024 0 1024 container.0 loot wancomatter:items/meele_weapons/magical_rod_ice
execute if entity @s[scores={dummy=98}] run loot replace block 1024 0 1024 container.0 loot wancomatter:items/meele_weapons/magical_rod_wind
execute if entity @s[scores={dummy=99}] run loot replace block 1024 0 1024 container.0 loot wancomatter:items/meele_weapons/magical_rod_earth
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Owner set from entity @s UUID
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air
execute store result entity @s SelectedItem.components."minecraft:custom_data".LegacySkill int 1 run scoreboard players get @s dummy
