scoreboard players reset @s dummy
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] store result score @s dummy run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] store result score #- dummy run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s dummy matches 1.. if score #- dummy = @s dummy run function wancomatter:skills/rod2-launcher
scoreboard players reset #-

execute if entity @s[tag=!failed] run tag @s add magic_used
execute if entity @s[tag=!failed,tag=magic_used] if score @s CooldownX matches 1.. run function wancomatter:skills/cooldown_set
execute if entity @s[tag=failed] run tag @s remove failed



scoreboard players reset @s dummy
scoreboard players reset @s rod2
