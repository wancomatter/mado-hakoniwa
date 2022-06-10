particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 1 force @a
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 4 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 1
execute rotated ~ 0 run summon minecraft:ravager ^ ^ ^1 {CustomName:'"暗黒獣"',Motion:[0.0d,1.2d,0.0d],Tags:["this","mob","mobInit","b3beast"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:400}
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players set #dummy dummy 0
execute unless entity @a[tag=b3target,limit=1] as @a[gamemode=!spectator,tag=!b3targeted,distance=..99] run scoreboard players operation #dummy dummy > @s boss_hate
execute unless entity @a[tag=b3target,limit=1] if score #dummy dummy matches 1.. as @a[gamemode=!spectator,tag=!b3targeted,distance=..99] if score @s boss_hate >= #dummy dummy run tag @s add b3target
execute store result score #dummy Cooldown1 run data get entity @e[tag=this,limit=1] Pos[0] 10
execute store result score #dummy Cooldown2 run data get entity @a[tag=b3target,limit=1] Pos[0] 10
execute as @e[tag=this] store result entity @s Motion[0] double 0.01 run scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown1
execute store result score #dummy Cooldown3 run data get entity @e[tag=this,limit=1] Pos[2] 10
execute store result score #dummy Cooldown4 run data get entity @a[tag=b3target,limit=1] Pos[2] 10
execute as @e[tag=this] store result entity @s Motion[2] double 0.01 run scoreboard players operation #dummy Cooldown4 -= #dummy Cooldown3
tag @e[tag=this] remove this
tag @a[tag=b3target] add b3targeted
tag @a[tag=b3target] remove b3target
scoreboard players reset #dummy
