scoreboard players set @s Cooldown2 205
tag @s add usedskill
data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0d
summon minecraft:marker ~ ~1 ~ {Tags:["this"]}
execute unless entity @e[tag=target,limit=1] positioned as @a[gamemode=!spectator,limit=1,sort=nearest] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2,Tags:["target"]}
execute as @e[tag=this] at @s facing entity @e[tag=target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=this] at @s facing ^1 ^ ^ run summon marker ^ ^ ^0.5 {Tags:["this2","b3fireGate"],data:{init:4b}}
execute as @e[tag=this] at @s facing ^-1 ^ ^ run summon marker ^ ^ ^0.5 {Tags:["this2","b3fireGate"],data:{init:3b}}
execute as @e[tag=this] at @s facing ^1 ^1 ^ run summon marker ^ ^ ^0.5 {Tags:["this2","b3fireGate"],data:{init:2b}}
execute as @e[tag=this] at @s facing ^-1 ^1 ^ run summon marker ^ ^ ^0.5 {Tags:["this2","b3fireGate"],data:{init:1b}}
execute as @e[tag=this] at @s facing ^ ^1 ^ run summon marker ^ ^ ^0.5 {Tags:["this2","b3fireGate","b3s2sound"],data:{init:0b}}
execute as @e[tag=this] at @s as @e[tag=this2] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=this2] store result score @s subcounter2 run data get entity @s data.init 1
execute unless score #difficult counter matches 3..4 run scoreboard players set @e[tag=this2] subcounter -1
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=this2] subcounter -2
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=this2] subcounter -4
execute if entity @s[tag=b3s21used] run scoreboard players remove @e[tag=this2] subcounter 1
execute if entity @s[tag=b3s22used] run scoreboard players remove @e[tag=this2] subcounter 1
tag @e[tag=this2] remove this2
kill @e[tag=target]
kill @e[tag=this]
particle minecraft:dust 1 0.1 0.1 1 ~ ~0.3 ~ 2 0.3 2 1 100 force @a
particle minecraft:dust 1 0.1 0.1 1 ~ ~0.3 ~ 0.8 1.5 0.8 1 300 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 4 2