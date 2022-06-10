scoreboard players set @s Cooldown9 180
tag @s add usedskill
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 1 force @a
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 4 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 1
execute unless score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ^ ^ ^1 {CustomName:'"パワードボム"',Motion:[0.0d,0.8d,1.0d],Tags:["b1s9creeper","b1s9first","mob","mobInit","b1s9creeper_advancements"],powered:1b,ExplosionRadius:2b,Fuse:40s,ignited:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:1000f}
execute if score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ^ ^ ^1 {CustomName:'"パワードボム"',Motion:[0.0d,0.8d,1.0d],Tags:["b1s9creeper","b1s9first","mob","mobInit","b1s9creeper_advancements"],powered:1b,ExplosionRadius:3b,Fuse:40s,ignited:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:1000f}
scoreboard players set #dummy dummy 0
execute unless entity @a[tag=b1s9target,limit=1] as @a[gamemode=!spectator,tag=!b1s9targeted,distance=..99] run scoreboard players operation #dummy dummy > @s boss_hate
execute unless entity @a[tag=b1s9target,limit=1] if score #dummy dummy matches 1.. as @a[gamemode=!spectator,tag=!b1s9targeted,distance=..99] if score @s boss_hate >= #dummy dummy run tag @s add b1s9target
execute store result score #dummy Cooldown1 run data get entity @e[tag=b1s9first,limit=1] Pos[0] 10
execute store result score #dummy Cooldown2 run data get entity @a[tag=b1s9target,limit=1] Pos[0] 10
execute as @e[tag=b1s9first] store result entity @s Motion[0] double 0.01 run scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown1
execute store result score #dummy Cooldown3 run data get entity @e[tag=b1s9first,limit=1] Pos[2] 10
execute store result score #dummy Cooldown4 run data get entity @a[tag=b1s9target,limit=1] Pos[2] 10
execute as @e[tag=b1s9first] store result entity @s Motion[2] double 0.01 run scoreboard players operation #dummy Cooldown4 -= #dummy Cooldown3
tag @e[tag=b1s9first] remove b1s9first
tag @a[tag=b1s9target] add b1s9targeted
tag @a[tag=b1s9target] remove b1s9target
scoreboard players reset #dummy
