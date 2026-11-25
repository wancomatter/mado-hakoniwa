scoreboard players set #dummy dummy -67
execute if entity @s[advancements={wancomatter:general/deflect-arrow=false}] if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:shield"}]} store result score #dummy dummy run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".shieldBlockAmount 1
execute if entity @s[advancements={wancomatter:general/deflect-arrow=false}] if data entity @s {SelectedItem:{id:"minecraft:shield"}} store result score #dummy dummy run data get entity @s SelectedItem.components."minecraft:custom_data".shieldBlockAmount 1
scoreboard players add #dummy dummy 100
execute as @s[advancements={wancomatter:general/deflect-arrow=false}] run scoreboard players operation @s shieldBlock *= #dummy dummy
execute as @s[advancements={wancomatter:general/deflect-arrow=false}] run scoreboard players operation @s shieldBlock /= #100 counter
scoreboard players reset #dummy dummy
execute as @s[advancements={wancomatter:general/deflect-arrow=false}] run scoreboard players operation @s damageTaken += @s shieldBlock
scoreboard players reset @s[scores={shieldBlock=1..}] shieldBlock
