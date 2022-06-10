execute if entity @e[tag=sandBag,limit=1] run kill @e[tag=sandBag]
summon minecraft:sheep ~ ~ ~ {CustomName:'"SandBag"',Tags:["mob","sandBag","stable","sandBag_hasAI"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.15d}],Silent:1b}
summon minecraft:sheep 15 64 15 {Rotation:[135f,0f],CustomName:'"SandBag"',Tags:["mob","sandBag","stable"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.15d}],Color:14b,Team:"Red",Silent:1b,NoAI:1b}
summon minecraft:sheep -15 64 15 {Rotation:[-135f,0f],CustomName:'"SandBag"',Tags:["mob","sandBag","stable"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.15d}],Color:4b,Team:"Yellow",Silent:1b,NoAI:1b}
summon minecraft:sheep -15 64 -15 {Rotation:[-45f,0f],CustomName:'"SandBag"',Tags:["mob","sandBag","stable"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.15d}],Color:11b,Team:"Blue",Silent:1b,NoAI:1b}
summon minecraft:sheep 15 64 -15 {Rotation:[45f,0f],CustomName:'"SandBag"',Tags:["mob","sandBag","stable"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.15d}],Color:13b,Team:"Green",Silent:1b,NoAI:1b}
execute as @e[tag=sandBag] run data modify entity @s WanderTarget set value {X:0,Y:0,Z:0}
execute as @e[tag=sandBag] run data modify entity @s WanderTarget.X set from entity @s Pos[0]
execute as @e[tag=sandBag] run data modify entity @s WanderTarget.Y set from entity @s Pos[1]
execute as @e[tag=sandBag] run data modify entity @s WanderTarget.Z set from entity @s Pos[2]
execute as @e[tag=sandBag] run scoreboard players set @s damageTaken 0
execute as @e[tag=sandBag] run scoreboard players set @s HP 5000
execute as @e[tag=sandBag] run scoreboard players set @s maxHP 10000


