scoreboard players remove @s Mana 24
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140
execute store result score @s s33slot run data get entity @s SelectedItemSlot
playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1.5 0.5
particle minecraft:poof ~ ~ ~ 0 0 0 1 200 normal @a
particle minecraft:poof ~ ~ ~ 0 0 0 1 50 force @a

summon minecraft:horse ~ ~ ~ {Tags:["mobR","discharge","summon_horse","summon_entity"],SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{Ungetable:1b}},Tame:1,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:0.21552},{Name:"horse.jump_strength",Base:0.66438}],Health:20f}
scoreboard players set @e[tag=discharge] maxHP 200
scoreboard players set @e[tag=discharge] HP 200
scoreboard players operation @e[tag=discharge,limit=1] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
summon minecraft:marker ~ ~ ~ {Tags:["discharge","summon_horse_stand"]}
scoreboard players operation @e[type=marker,tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge