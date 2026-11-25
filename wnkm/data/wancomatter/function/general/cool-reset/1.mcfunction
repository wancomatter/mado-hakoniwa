fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
data modify block 1024 0 1024 Items set from entity @s Inventory
data remove block 1024 0 1024 Items[{components:{"minecraft:custom_data":{usedSkillSlot:0b}}}].components."minecraft:custom_data".usedSkillSlot
item replace entity @s container.0 from block 1024 0 1024 container.0
item replace entity @s container.1 from block 1024 0 1024 container.1
item replace entity @s container.2 from block 1024 0 1024 container.2
item replace entity @s container.3 from block 1024 0 1024 container.3
item replace entity @s container.4 from block 1024 0 1024 container.4
item replace entity @s container.5 from block 1024 0 1024 container.5
item replace entity @s container.6 from block 1024 0 1024 container.6
item replace entity @s container.7 from block 1024 0 1024 container.7
item replace entity @s container.8 from block 1024 0 1024 container.8
setblock 1024 0 1024 air

playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.3 0.5
playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.3 0.5
scoreboard players set @s Cooldown1 -1
