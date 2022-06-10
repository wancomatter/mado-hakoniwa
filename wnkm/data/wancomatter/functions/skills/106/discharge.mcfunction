#三角関数周りの測定
execute positioned 0.0 0.15 0.0 run summon marker ^ ^ ^1 {Tags:["discharge"]}
execute as @e[tag=discharge] store result score #dummy Cooldown1 run data get entity @s Pos[0] 100
execute as @e[tag=discharge] store result score #dummy Cooldown2 run data get entity @s Pos[1] 100
execute as @e[tag=discharge] store result score #dummy Cooldown3 run data get entity @s Pos[2] 100
kill @e[tag=discharge]

#pickup周りの処理用のスコア計算
scoreboard players set @s CooldownX 300
scoreboard players operation @s CooldownX *= @s statCTAmount
scoreboard players operation @s CooldownX /= #1000 counter
execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~-0.6 ~ {Tags:["discharge","throweddagger"],Invisible:1b,Small:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{}],CustomModelData:106}}],Pose:{Head:[10f,0f,0f]},DisabledSlots:2039583}
scoreboard players operation @e[tag=discharge,limit=1] Cooldown6 = @s CooldownX
scoreboard players add @e[tag=discharge,limit=1] Cooldown6 96

#コスト支払い
scoreboard players remove @s Mana 6
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300

#代入するMotion[0,1,2]の測定
execute store result score @e[tag=discharge,limit=1,sort=nearest] Cooldown1 run data get entity @s Motion[0] 10
execute as @e[tag=discharge] store result entity @s Motion[0] double 0.015 run scoreboard players operation @s Cooldown1 += #dummy Cooldown1

execute store result score @e[tag=discharge,limit=1,sort=nearest] Cooldown2 run data get entity @s Motion[1] 10
execute as @e[tag=discharge] store result entity @s Motion[1] double 0.015 run scoreboard players operation @s Cooldown2 += #dummy Cooldown2

execute store result score @e[tag=discharge,limit=1,sort=nearest] Cooldown3 run data get entity @s Motion[2] 10
execute as @e[tag=discharge] store result entity @s Motion[2] double 0.015 run scoreboard players operation @s Cooldown3 += #dummy Cooldown3

scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber

#演出用設定
data modify entity @e[tag=discharge,limit=1,sort=nearest] Pose.Head[1] set from entity @s Rotation[0]
data modify entity @e[tag=discharge,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=discharge,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]

scoreboard players set @e[tag=discharge] counter 0
scoreboard players set @e[tag=discharge] subcounter -90
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy

#投擲演出
playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1.2 1.8
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 1.8
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1.2 0.5
particle minecraft:dust 0.8 0 0 1 ~ ~ ~ 2 2 2 1 160 normal @a
particle minecraft:dust 0.8 0 0 1 ~ ~ ~ 2 2 2 1 40 force @a
