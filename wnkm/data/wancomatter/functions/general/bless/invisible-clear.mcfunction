#対象バフ: Invisibility
#対象バフのId:14
fill 0 0 0 0 0 0 minecraft:air
fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
data modify block 0 0 0 Items set from entity @s Inventory[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem


loot replace entity @s armor.feet mine 0 0 0 minecraft:air{inv_copy:1b}
fill 0 0 0 0 0 0 minecraft:air
fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
data modify block 0 0 0 Items set from entity @s Inventory
data remove block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleItem
data remove block 0 0 0 Items[{id:"minecraft:stone_hoe",tag:{invisibleFlag:1b}}].tag.invisibleFlag
loot replace entity @s container.0 9 mine 0 0 0 air{inv_copy:1b}
fill 0 0 0 0 0 0 minecraft:air

attribute @s generic.movement_speed modifier remove 86ab4484-eaf7-4fd1-0000-c2135c278d09
attribute @s generic.movement_speed modifier remove 86ab4484-eaf7-4fd1-0001-c2135c278d09
attribute @s generic.attack_damage modifier remove 86ab4484-eaf7-4fd1-0010-c2135c278d09
attribute @s generic.attack_damage modifier remove 86ab4484-eaf7-4fd1-0011-c2135c278d09
tag @s remove bless_invisible_now
