scoreboard players operation @s dummy = #lobby cost
scoreboard players operation @s dummy -= @s cost
setblock 0 0 0 minecraft:air
setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:torch",Count:1b,tag:{seal:1b,display:{Name:'{"text":"残コスト","color":"gold","italic":false}'}}}],Lock:"wnkm"}
execute store result block 0 0 0 Items[{Slot:0b}].Count byte 1 run scoreboard players get @s dummy
loot replace entity @s container.35 1 mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 minecraft:air