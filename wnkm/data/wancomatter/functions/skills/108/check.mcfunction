scoreboard players set @s dummy 0
execute if score @s dummy matches 0 if data entity @s {Inventory:[{Slot:-106b,tag:{throwAxe:1b,available:1b}}]} run scoreboard players set @s dummy 2
execute if score @s dummy matches 0 if data entity @s {Inventory:[{Slot:-106b,tag:{throwAxe:1b}}]} run scoreboard players set @s dummy 1
execute if score @s dummy matches 0 if data entity @s {SelectedItem:{tag:{throwAxe:1b,available:1b}}} run function wancomatter:skills/108/disavailable_main
execute if score @s dummy matches 1 if data entity @s {SelectedItem:{id:"minecraft:iron_axe",tag:{CustomModelData:108}}} run function wancomatter:skills/108/available
execute if score @s dummy matches 2 unless data entity @s {SelectedItem:{id:"minecraft:iron_axe",tag:{CustomModelData:108}}} run function wancomatter:skills/108/disavailable_off

execute if entity @s[advancements={wancomatter:general/inventory_changed=true}] run advancement revoke @s only wancomatter:general/inventory_changed
