scoreboard players operation @s dummy = #lobby cost
scoreboard players operation @s dummy -= @s cost
setblock 1024 0 1024 minecraft:air
setblock 1024 0 1024 minecraft:shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:torch",components:{"minecraft:custom_data":{seal:1b},"minecraft:custom_name":{color:"gold",italic:0b,text:"残コスト"}}}]}
execute store result block 1024 0 1024 Items[{Slot:0b}].count byte 1 run scoreboard players get @s dummy
item replace entity @s container.35 from block 1024 0 1024 container.0
setblock 1024 0 1024 minecraft:air
