scoreboard players operation #dummy playerNumber = @s playerNumber
execute if entity @s[scores={Mana=1..,CooldownX=..0}] if entity @s[scores={hold_gun=79,rod_drop=1..}] run tag @s add flag
execute if entity @s[tag=flag] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ as @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:79}}}] run kill @s
execute if entity @s[tag=flag] run fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
execute if entity @s[tag=flag] run loot replace block 0 0 0 container.0 loot wancomatter:items/magic_summon/snow_golem
execute if entity @s[tag=flag] run data modify block 0 0 0 Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:79}}].tag.Owner set from entity @s UUID
execute if entity @s[tag=flag] run loot replace entity @s weapon.mainhand 1 mine 0 0 0 air{inv_copy:1b}
execute if entity @s[tag=flag] run setblock 0 0 0 air

execute unless entity @s[tag=flag] run function wancomatter:skills/fail
execute if entity @s[tag=flag] as @e[tag=summon_snowgolem] if score #dummy playerNumber = @s ownerNumber run kill @s
execute if entity @s[tag=flag] run scoreboard players remove @s Mana 1
execute if entity @s[tag=flag] store result score @s s79slot run data get entity @s SelectedItemSlot
execute if entity @s[tag=flag] run scoreboard players set @s CooldownX_max 80
execute if entity @s[tag=flag] run scoreboard players set @s CooldownX 80
scoreboard players reset #dummy playerNumber
tag @s remove p.snow_golem
tag @s remove flag
