scoreboard players reset @s dummy
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] store result score @s dummy run data get entity @s SelectedItem.tag.CustomModelData
#execute if score @s dummy matches 1.. run function wancomatter:skills/fishrod-launcher
#execute unless entity @s[tag=failed] if score @s CooldownX matches 1.. run function wancomatter:skills/cooldown_set
#execute if entity @s[tag=failed] run tag @s remove failed

execute unless score @s dummy matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:fishing_rod"}]}] store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if entity @s[scores={dummy=116,Mana=1..},tag=!StarBurstStream_using] unless score @s CT_darkRepulser matches 1.. run function wancomatter:skills/116/first

execute anchored eyes positioned ^ ^ ^ run kill @e[type=fishing_bobber,limit=1,sort=nearest,distance=..4]
scoreboard players reset @s fishrod