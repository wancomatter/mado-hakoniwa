scoreboard players remove @s Mana 6
scoreboard players add @s CooldownX 80
scoreboard players add @s CooldownX_max 80
execute positioned ^-1.5 ^ ^ run summon minecraft:marker ~ ~3.1 ~ {Tags:["discharge","fireball"]}
execute positioned ^1.5 ^ ^ run summon minecraft:marker ~ ~3.1 ~ {Tags:["discharge","fireball"]}
execute rotated as @s as @e[tag=discharge] positioned as @s run tp @s ~ ~ ~ ~ ~
execute at @e[tag=discharge] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
execute at @e[tag=discharge] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.8 0.5

scoreboard players operation #dummy teamNumber = @s teamNumber
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=discharge] run scoreboard players operation @s teamNumber = #dummy teamNumber
execute as @e[tag=discharge] run scoreboard players operation @s playerNumber = #dummy playerNumber
execute as @e[tag=discharge] positioned as @s positioned ^ ^ ^12 as @e[distance=..50,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add fireball_target
execute as @e[tag=discharge] positioned as @s positioned ^ ^ ^12 at @e[tag=fireball_target,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["fireball_target_dummy"]}
execute as @e[tag=discharge] at @s facing entity @e[tag=fireball_target_dummy,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
kill @e[tag=fireball_target_dummy]
tag @e[tag=fireball_target] remove fireball_target
tag @s remove fireball_addable
scoreboard players reset #dummy

tag @e[tag=discharge] remove discharge