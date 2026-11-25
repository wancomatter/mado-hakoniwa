scoreboard players operation @s CooldownX *= #3 counter
scoreboard players operation @s CooldownX_max *= #3 counter
scoreboard players operation @s CooldownX /= #10 counter
scoreboard players operation @s CooldownX_max /= #10 counter

scoreboard players operation #dummy Mana = @s Mana
scoreboard players operation #dummy Mana -= #bless Mana
scoreboard players operation #dummy Mana /= #5 counter
scoreboard players operation @s Mana -= #dummy Mana

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
data modify block 1024 0 1024 Items set from entity @s Inventory
data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{onepoint_cast_available:1b}}}].components."minecraft:custom_data".usedSkillSlot set from entity @s SelectedItemSlot
execute store result block 1024 0 1024 Items[{components:{"minecraft:custom_data":{onepoint_cast_available:1b}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run data get entity @s SelectedItemSlot
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

tag @s remove onepoint_cast_check_slot
