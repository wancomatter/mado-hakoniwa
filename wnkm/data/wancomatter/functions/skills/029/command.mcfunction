playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.7
particle minecraft:portal ~ ~1 ~ 1 1 1 0 200 normal @a
particle minecraft:portal ~ ~1 ~ 1 1 1 0 50 force @a
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 1 70 normal @a
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 1 14 force @a
tp @s ~ ~1 ~ ~ ~
tp @s @s


execute positioned ^ ^ ^3 if entity @e[distance=..14,scores={maxHP=1..}] as @e[distance=..14,scores={maxHP=1..}] unless score #dummy teamNumber = @s teamNumber run tag @s add knight-target
execute if entity @e[tag=knight-target,limit=1] positioned ^ ^ ^3 as @e[tag=knight-target,limit=1,sort=nearest] at @s run tag @e[tag=knight-target,distance=0.01..] remove knight-target
execute if entity @e[tag=knight-target,limit=1] rotated as @s rotated ~ 0 run summon snowball ^ ^1 ^-1 {Tags:["discharge"]}
execute if entity @e[tag=knight-target,limit=1] run data modify entity @e[type=snowball,tag=discharge,limit=1] Owner set from entity @e[tag=knight-target,limit=1,sort=nearest] UUID
execute if entity @e[tag=knight-target,limit=1] rotated ~ 0 positioned 0.0 0.0 0.0 run summon marker ^ ^0.2 ^1 {Tags:["discharge2"]}
execute if entity @e[tag=knight-target,limit=1] run data modify entity @e[tag=discharge,limit=1] Motion set from entity @e[tag=discharge2,limit=1] Pos
execute if entity @e[tag=knight-target,limit=1] run tag @e[tag=discharge] remove discharge
execute if entity @e[tag=knight-target,limit=1] run kill @e[tag=discharge2]
execute if entity @e[tag=knight-target,limit=1] at @e[tag=knight-target,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["knight-target_stand","discharge2"],Radius:0f,Duration:10}
execute if entity @e[tag=knight-target,limit=1] run scoreboard players operation @e[tag=discharge2,limit=1] playerNumber = @s playerNumber
execute if entity @e[tag=knight-target,limit=1] run tag @e[tag=discharge2] remove discharge2
execute if entity @e[tag=knight-target,limit=1] at @e[tag=knight-target,sort=nearest,limit=1] run particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 80 normal @a
tag @e[tag=knight-target] remove knight-target

tag @s add knight-com5
tag @s remove knight-command