#対象バフ: Invisibility
#対象バフのId:14
fill 1024 0 1024 1024 0 1024 minecraft:air
fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
data modify block 1024 0 1024 Items set from entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem


item replace entity @s armor.feet from block 1024 0 1024 container.0
fill 1024 0 1024 1024 0 1024 minecraft:air
fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
data modify block 1024 0 1024 Items set from entity @s Inventory
data remove block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem
data remove block 1024 0 1024 Items[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleFlag
item replace entity @s container.0 from block 1024 0 1024 container.0
item replace entity @s container.1 from block 1024 0 1024 container.1
item replace entity @s container.2 from block 1024 0 1024 container.2
item replace entity @s container.3 from block 1024 0 1024 container.3
item replace entity @s container.4 from block 1024 0 1024 container.4
item replace entity @s container.5 from block 1024 0 1024 container.5
item replace entity @s container.6 from block 1024 0 1024 container.6
item replace entity @s container.7 from block 1024 0 1024 container.7
item replace entity @s container.8 from block 1024 0 1024 container.8
fill 1024 0 1024 1024 0 1024 minecraft:air

attribute @s movement_speed modifier remove wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0000-c2135c278d09
attribute @s movement_speed modifier remove wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0001-c2135c278d09
attribute @s attack_damage modifier remove wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0010-c2135c278d09
attribute @s attack_damage modifier remove wnkm:legacy_modifier/86ab4484-eaf7-4fd1-0011-c2135c278d09
tag @s remove bless_invisible_now
