scoreboard players remove @s Mana 24
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140
execute store result score @s s33slot run data get entity @s SelectedItemSlot
playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1.5 0.5
particle minecraft:poof ~ ~ ~ 0 0 0 1 200 normal @a
particle minecraft:poof ~ ~ ~ 0 0 0 1 50 force @a

summon minecraft:horse ~ ~ ~ {Health:20.0f,SaddleItem:{Count:1b,id:"minecraft:saddle",tag:{Ungetable:1b}},Tags:["mobR","discharge","summon_horse","summon_entity","wnkm.owned","wnkm.round"],Tame:1,attributes:[{base:20,id:"minecraft:max_health"},{base:0.21552d,id:"minecraft:movement_speed"},{base:0.66438d,id:"minecraft:jump_strength"}],drop_chances:{saddle:2.0f},equipment:{saddle:{components:{"minecraft:custom_data":{Ungetable:1b}},count:1,id:"minecraft:saddle"}},saddle:{components:{"minecraft:custom_data":{Ungetable:1b}},count:1,id:"minecraft:saddle"}}
scoreboard players set @e[tag=discharge] maxHP 200
scoreboard players set @e[tag=discharge] HP 200
scoreboard players operation @e[tag=discharge,limit=1] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
summon minecraft:marker ~ ~ ~ {Tags:["discharge","summon_horse_stand","wnkm.owned","wnkm.round"]}
scoreboard players operation @e[type=marker,tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
