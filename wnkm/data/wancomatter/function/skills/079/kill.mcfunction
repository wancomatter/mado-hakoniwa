scoreboard players operation #dummy playerNumber = @s playerNumber
execute if entity @s[scores={Mana=1..,CooldownX=..0}] if entity @s[scores={hold_gun=79,rod_drop=1..}] run tag @s add flag
execute if entity @s[tag=flag] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ as @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:79}}}}] run kill @s
execute if entity @s[tag=flag] run fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
execute if entity @s[tag=flag] run loot replace block 1024 0 1024 container.0 loot wancomatter:items/magic_summon/snow_golem
execute if entity @s[tag=flag] run data modify block 1024 0 1024 Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:79}}}].components."minecraft:custom_data".Owner set from entity @s UUID
execute if entity @s[tag=flag] run item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
execute if entity @s[tag=flag] run setblock 1024 0 1024 air

execute unless entity @s[tag=flag] run function wancomatter:skills/fail
execute if entity @s[tag=flag] as @e[tag=summon_snowgolem] if score #dummy playerNumber = @s ownerNumber run kill @s
execute if entity @s[tag=flag] run scoreboard players remove @s Mana 1
execute if entity @s[tag=flag] store result score @s s79slot run data get entity @s SelectedItemSlot
execute if entity @s[tag=flag] run scoreboard players set @s CooldownX_max 80
execute if entity @s[tag=flag] run scoreboard players set @s CooldownX 80
scoreboard players reset #dummy playerNumber
tag @s remove p.snow_golem
tag @s remove flag
