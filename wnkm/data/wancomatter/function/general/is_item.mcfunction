execute if data entity @s {Item:{id:"minecraft:trident",components:{"minecraft:custom_data":{LegacySkill:101}}}} run function wancomatter:general/item-neptune-return
execute if data entity @s {Item:{components:{"minecraft:custom_data":{Soulbound:1b}}}} run function wancomatter:general/item-return
execute if data entity @s {Item:{components:{"minecraft:custom_data":{EggArrow:1b}}}} at @s run function wancomatter:general/item-kill
tag @s add isitem
