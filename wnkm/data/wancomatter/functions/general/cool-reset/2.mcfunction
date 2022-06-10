fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
data modify block 0 0 0 Items set from entity @s Inventory
data remove block 0 0 0 Items[{tag:{usedSkillSlot:1b}}].tag.usedSkillSlot
loot replace entity @s container.0 9 mine 0 0 0 air{inv_copy:1b}
setblock 0 0 0 air

playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.3 0.5
playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.3 0.5
scoreboard players set @s Cooldown2 -1