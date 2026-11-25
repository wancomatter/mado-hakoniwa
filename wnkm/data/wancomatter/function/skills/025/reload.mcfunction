tag @s add dummy
execute if entity @s[scores={Mana=14..,CooldownX=..0}] if entity @s[scores={hold_gun=25,rod_drop=1..}] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ as @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:25}}}}] run tag @s add it
execute if entity @s[scores={Mana=14..,CooldownX=..0}] if entity @s[scores={hold_gun=25,rod_drop=1..}] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ as @e[type=item,limit=1,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:125}}}}] run tag @s add it
execute if entity @s[scores={Mana=14..,CooldownX=..0}] if entity @s[scores={hold_gun=25,rod_drop=1..}] run fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
execute if entity @s[scores={Mana=14..,CooldownX=..0}] if entity @s[scores={hold_gun=25,rod_drop=1..}] run loot replace block 1024 0 1024 container.0 loot wancomatter:items/guns/shoen
execute if entity @s[scores={Mana=14..,CooldownX=..0}] if entity @s[scores={hold_gun=25,rod_drop=1..}] if data entity @e[tag=it,limit=1] Item.components."minecraft:custom_data".double_cast_first run data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".double_cast_first set from entity @e[tag=it,limit=1] Item.components."minecraft:custom_data".double_cast_first
execute if entity @s[scores={Mana=14..,CooldownX=..0}] if entity @s[scores={hold_gun=25,rod_drop=1..}] run data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Owner set from entity @s UUID
execute if entity @s[scores={Mana=14..,CooldownX=..0}] if entity @s[scores={hold_gun=25,rod_drop=1..}] run item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
execute if entity @s[scores={Mana=14..,CooldownX=..0}] if entity @s[scores={hold_gun=25,rod_drop=1..}] run setblock 1024 0 1024 air
execute if entity @e[tag=it,limit=1] run kill @e[tag=it]
execute unless entity @s[scores={Mana=14..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={Mana=14..,CooldownX=..0}] run function wancomatter:skills/025/reload-action
tag @s remove dummy
