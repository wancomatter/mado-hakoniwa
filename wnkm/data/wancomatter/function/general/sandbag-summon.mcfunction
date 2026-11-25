execute if entity @e[tag=sandBag,limit=1] run kill @e[tag=sandBag]
summon minecraft:sheep ~ ~ ~ {Health:1000.0f,Silent:1b,Tags:["mob","sandBag","stable","sandBag_hasAI","wnkm.owned"],attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.15d,id:"minecraft:movement_speed"}],CustomName:"SandBag"}
summon minecraft:sheep 15 64 15 {Color:14b,Health:1000.0f,NoAI:1b,Rotation:[135.0f,0.0f],Silent:1b,Tags:["mob","sandBag","stable","wnkm.owned"],Team:"Red",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.15d,id:"minecraft:movement_speed"}],CustomName:"SandBag"}
summon minecraft:sheep -15 64 15 {Color:4b,Health:1000.0f,NoAI:1b,Rotation:[-135.0f,0.0f],Silent:1b,Tags:["mob","sandBag","stable","wnkm.owned"],Team:"Yellow",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.15d,id:"minecraft:movement_speed"}],CustomName:"SandBag"}
summon minecraft:sheep -15 64 -15 {Color:11b,Health:1000.0f,NoAI:1b,Rotation:[-45.0f,0.0f],Silent:1b,Tags:["mob","sandBag","stable","wnkm.owned"],Team:"Blue",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.15d,id:"minecraft:movement_speed"}],CustomName:"SandBag"}
summon minecraft:sheep 15 64 -15 {Color:13b,Health:1000.0f,NoAI:1b,Rotation:[45.0f,0.0f],Silent:1b,Tags:["mob","sandBag","stable","wnkm.owned"],Team:"Green",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.15d,id:"minecraft:movement_speed"}],CustomName:"SandBag"}
execute as @e[tag=sandBag] run data modify entity @s WanderTarget set value {X:0,Y:0,Z:0}
execute as @e[tag=sandBag] run data modify entity @s WanderTarget.X set from entity @s Pos[0]
execute as @e[tag=sandBag] run data modify entity @s WanderTarget.Y set from entity @s Pos[1]
execute as @e[tag=sandBag] run data modify entity @s WanderTarget.Z set from entity @s Pos[2]
execute as @e[tag=sandBag] run scoreboard players set @s damageTaken 0
execute as @e[tag=sandBag] run scoreboard players set @s HP 5000
execute as @e[tag=sandBag] run scoreboard players set @s maxHP 10000
