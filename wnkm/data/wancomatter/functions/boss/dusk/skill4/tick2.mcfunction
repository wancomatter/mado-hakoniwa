execute unless score @s counter matches 40.. if entity @s[tag=b3magmaL] run tp @s ^ ^ ^0.5 ~-5 ~
execute unless score @s counter matches 40.. if entity @s[tag=b3magmaR] run tp @s ^ ^ ^0.5 ~5 ~
execute if score @s counter matches 40 if entity @s[tag=b3s4sound] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 4 2
execute if score @s counter matches 40 if entity @s[tag=b3magmaR] run particle minecraft:flame ~ ~0.8 ~ 0.5 0.5 0.5 1 5 force @a
execute if score @s counter matches 40 if entity @s[tag=b3magmaR] run particle minecraft:flame ~ ~0.8 ~ 0.5 0.5 0.5 1 5 normal @a
execute if score @s counter matches 40..65 if entity @s[tag=b3magmaL] run tp @s ^ ^ ^0.5 ~-7.2 ~
execute if score @s counter matches 40..65 if entity @s[tag=b3magmaR] run tp @s ^ ^ ^0.5 ~7.2 ~
execute if score @s counter matches 70 run function wancomatter:boss/dusk/skill4/tick70

execute if score @s counter matches 66..70 run tp @s ^ ^ ^0.5
execute if score @s counter matches 71..75 run tp @s ^ ^ ^0.6
execute if score @s counter matches 76..81 run tp @s ^ ^ ^0.7
execute if score @s counter matches 82..88 run tp @s ^ ^ ^0.8
execute if score @s counter matches 89..96 run tp @s ^ ^ ^0.9
execute if score @s counter matches 97.. run tp @s ^ ^ ^1.0

scoreboard players operation #dummy teamNumber = @s teamNumber
execute positioned ^ ^ ^-2 if entity @e[distance=..0.8,scores={maxHP=1..},limit=1] as @e[distance=..0.8,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute positioned ^ ^1.5 ^-2 if entity @e[distance=..0.8,scores={maxHP=1..},limit=1] as @e[distance=..0.8,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/dusk/skill4/dmg


execute if score @s counter matches 115.. run kill @s