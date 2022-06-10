scoreboard players set @s dummy 0
execute if score @s dummy matches 0 if data entity @s {Inventory:[{Slot:-106b,tag:{darkRepulser:1b,darkRepulser_available:1b}}]} run scoreboard players set @s dummy 2
execute if score @s dummy matches 0 if data entity @s {Inventory:[{Slot:-106b,tag:{darkRepulser:1b}}]} run scoreboard players set @s dummy 1
execute if score @s dummy matches 0 if data entity @s {SelectedItem:{tag:{darkRepulser:1b,darkRepulser_available:1b}}} run function wancomatter:skills/116/disavailable_main
execute if score @s dummy matches 1 if data entity @s {SelectedItem:{tag:{elucidator:1b}}} run function wancomatter:skills/116/available
execute if score @s dummy matches 2 unless data entity @s {SelectedItem:{tag:{elucidator:1b}}} run function wancomatter:skills/116/disavailable_off

execute if entity @s[advancements={wancomatter:general/inventory_changed=true}] run advancement revoke @s only wancomatter:general/inventory_changed
        