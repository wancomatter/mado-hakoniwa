fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:items/meele_weapons/neptune
data modify block 1024 0 1024 Items[{id:"minecraft:trident",components:{"minecraft:custom_data":{LegacySkill:101}}}].components."minecraft:custom_data".Owner set from entity @s UUID
loot give @s mine 1024 0 1024 stick[custom_data={inv_copy:1b}]
setblock 1024 0 1024 air
