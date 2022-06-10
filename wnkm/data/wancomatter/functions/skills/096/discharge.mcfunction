scoreboard players remove @s Mana 1
execute at @s run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 2 2

scoreboard players add @s dummy 1
execute unless score @s dummy matches 96..99 run scoreboard players set @s dummy 96
fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
execute if entity @s[scores={dummy=96}] run loot replace block 0 0 0 container.0 loot wancomatter:items/meele_weapons/magical_rod
execute if entity @s[scores={dummy=97}] run loot replace block 0 0 0 container.0 loot wancomatter:items/meele_weapons/magical_rod_ice
execute if entity @s[scores={dummy=98}] run loot replace block 0 0 0 container.0 loot wancomatter:items/meele_weapons/magical_rod_wind
execute if entity @s[scores={dummy=99}] run loot replace block 0 0 0 container.0 loot wancomatter:items/meele_weapons/magical_rod_earth
data modify block 0 0 0 Items[{Slot:0b}].tag.Owner set from entity @s UUID
loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 air
execute store result entity @s SelectedItem.tag.CustomModelData int 1 run scoreboard players get @s dummy