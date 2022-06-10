scoreboard players operation @s CooldownX *= #3 counter
scoreboard players operation @s CooldownX_max *= #3 counter
scoreboard players operation @s CooldownX /= #10 counter
scoreboard players operation @s CooldownX_max /= #10 counter

scoreboard players operation #dummy Mana = @s Mana
scoreboard players operation #dummy Mana -= #bless Mana
scoreboard players operation #dummy Mana /= #5 counter
scoreboard players operation @s Mana -= #dummy Mana

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
data modify block 0 0 0 Items set from entity @s Inventory
data modify block 0 0 0 Items[{tag:{onepoint_cast_available:1b}}].tag.usedSkillSlot set from entity @s SelectedItemSlot
execute store result block 0 0 0 Items[{tag:{onepoint_cast_available:1b}}].tag.usedSkillSlot byte 1 run data get entity @s SelectedItemSlot
loot replace entity @s container.0 9 mine 0 0 0 air{inv_copy:1b}
setblock 0 0 0 air

tag @s remove onepoint_cast_check_slot