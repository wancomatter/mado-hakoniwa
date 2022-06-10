#コスト支払い
scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

#演出とか
particle minecraft:firework ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:firework ~ ~ ~ 1 1 1 1 25 force @a
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 2
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1 0.5

#慣性とか含めたMotion測定
summon minecraft:marker 0.0 0.0 0.0 {Tags:["vector"]}
data modify entity @e[tag=vector,limit=1] Pos set from entity @s Motion
execute as @e[tag=vector] positioned as @s positioned ~ ~ ~ run tp @s ^ ^ ^2
#召喚と設定
execute anchored eyes run summon minecraft:snowball ^ ^ ^ {Tags:["this","spectral_shot"],Glowing:1b,Fire:2s}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute as @e[tag=this] store result score @s subcounter2 run data get entity @s UUID[1] 1
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

#後処理
tag @e[tag=this] remove this