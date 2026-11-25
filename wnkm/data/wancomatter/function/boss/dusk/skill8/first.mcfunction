execute unless score #difficult counter matches 3..4 run scoreboard players set @s Cooldown8 240
execute if score #difficult counter matches 3 run scoreboard players set @s Cooldown8 170
execute if score #difficult counter matches 4 run scoreboard players set @s Cooldown8 100
scoreboard players set @s counter 60
tag @s add usedskill
effect give @s minecraft:luck 1 9 true

execute unless entity @e[tag=target,limit=1] as @a[gamemode=!spectator,scores={maxHP=1..}] run scoreboard players operation #dummy dummy > @s boss_hate
execute unless entity @e[tag=target,limit=1] as @a[gamemode=!spectator,scores={maxHP=1..}] if score @s boss_hate >= #dummy dummy at @s run summon area_effect_cloud ~ ~0.5 ~ {Duration:2,Tags:["target","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute facing entity @e[tag=target,limit=1,sort=nearest] feet positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^ ^2 {Tags:["vector","wnkm.owned","wnkm.round"]}
execute as @e[tag=vector] positioned 0.0 0.0 0.0 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute anchored eyes run summon minecraft:arrow ^ ^-0.5 ^0.5 {Color:-1,Fire:32767s,NoGravity:1b,PierceLevel:127b,Potion:"minecraft:harming",Tags:["b3circleArrow","this","wnkm.owned","wnkm.round"],damage:0.1d,item:{components:{"minecraft:potion_contents":{custom_color:-1,potion:"minecraft:harming"}},count:1,id:"minecraft:tipped_arrow"},life:1198s,pickup:2b}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
execute store result score @e[tag=this,limit=1] subcounter run data get entity @e[tag=vector,limit=1] Rotation[0] 100
execute store result score @e[tag=this,limit=1] subcounter2 run data get entity @e[tag=vector,limit=1] Rotation[1] 100
execute if entity @s[team=Red] run team join RedDummy @e[tag=this]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this]
kill @e[tag=target]
tag @e[tag=this] remove this

execute positioned 0.0 0.5 0.0 rotated as @e[tag=vector,limit=1] rotated ~ 0 run summon minecraft:marker ^ ^ ^-1.0 {Tags:["this","wnkm.owned","wnkm.round"]}
data modify entity @s Motion set from entity @e[tag=this,limit=1] Pos
kill @e[tag=this]
kill @e[tag=vector]

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 4 2
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 4 2
