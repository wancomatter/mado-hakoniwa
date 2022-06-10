execute if data entity @s {Item:{id:"minecraft:trident",tag:{CustomModelData:101}}} run function wancomatter:general/item-neptune-return
execute if data entity @s {Item:{tag:{Soulbound:1b}}} run function wancomatter:general/item-return
execute if data entity @s {Item:{tag:{EggArrow:1b}}} at @s run function wancomatter:general/item-kill
tag @s add isitem
