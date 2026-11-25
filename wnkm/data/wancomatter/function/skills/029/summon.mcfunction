scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 40
scoreboard players set @s CooldownX_max 40
execute store result score @s s29slot run data get entity @s SelectedItemSlot

particle minecraft:poof ~ ~ ~ 1 0 1 1 80 normal @a
particle minecraft:poof ~ ~ ~ 1 0 1 1 20 normal @a
particle minecraft:instant_effect ~ ~ ~ 3 0 3 0 120 normal @a
particle minecraft:instant_effect ~ ~ ~ 3 0 3 0 30 force @a
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1.3 0.5

summon minecraft:husk ~ ~1 ~ {AbsorptionAmount:240.0f,Health:1000.0f,Silent:1b,Tags:["mob","mobInit","undead","discharge","summon_knight","summon_entity","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.3d,id:"minecraft:movement_speed"},{base:1.6d,id:"minecraft:attack_knockback"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:{chest:{components:{"minecraft:dyed_color":1},count:1,id:"minecraft:leather_chestplate"},feet:{components:{"minecraft:dyed_color":1},count:1,id:"minecraft:leather_boots"},head:{components:{"minecraft:profile":{id:[I;0,0,0,29],name:"haniwa",properties:[{name:"textures",value:"eyJ0aW1lc3RhbXAiOjE1ODEwNjI2NTQxNzQsInByb2ZpbGVJZCI6IjhmYmU4MjdmOGQyNDQxYjlhNjk4OTc1MTE4YjgxZTc2IiwicHJvZmlsZU5hbWUiOiJMZXZhdGVpbiIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xZTg0NzNjZjQwN2FjNzkzNTBhYTViMzQ2MWViYWViOGI5NzVlZTA2NDZkMGE3MmIzZGE2Yzc2N2FkNjI2ZWM2IiwibWV0YWRhdGEiOnsibW9kZWwiOiJzbGltIn19fX0="}]}},count:1,id:"minecraft:player_head"},legs:{components:{"minecraft:dyed_color":1},count:1,id:"minecraft:leather_leggings"},mainhand:{components:{"minecraft:attribute_modifiers":[{amount:7.0d,id:"minecraft:000000de-0000-00de-0000-00de000000de",operation:"add_value",slot:"mainhand",type:"minecraft:attack_damage"},{amount:5.0d,id:"minecraft:000000de-0000-00df-0000-00de000000df",operation:"add_value",slot:"mainhand",type:"minecraft:attack_speed"}]},count:1,id:"minecraft:wooden_sword"}},CustomName:"埴輪兵"}
scoreboard players operation @e[tag=discharge,limit=1] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 1 run team join Red @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 2 run team join Aqua @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 3 run team join Yellow @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 4 run team join Green @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 5 run team join Purple @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 6 run team join White @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 7 run team join Black @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 8 run team join Blue @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 9 run team join Pink @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 10 run team join Gold @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 11 run team join Gray @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 12 run team join DarkRed @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 13 run team join DarkAqua @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 14 run team join DarkGreen @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 15 run team join DarkBlue @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 16 run team join DarkGray @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 17 run team join noPush @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 1 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 16711680
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 2 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 65535
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 3 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 16776960
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 4 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 65280
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 5 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 11141290
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 6 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 16777215
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 7 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 0
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 8 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 255
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 9 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 16711935
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 10 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 16755200
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 11 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 11184810
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 12 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 11141120
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 13 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 43690
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 14 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 43520
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 15 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 170
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 16 run data modify entity @s ArmorItems[{components:{"minecraft:dyed_color":1}}].components."minecraft:dyed_color" set value 5592405
tag @e[tag=discharge] remove discharge
