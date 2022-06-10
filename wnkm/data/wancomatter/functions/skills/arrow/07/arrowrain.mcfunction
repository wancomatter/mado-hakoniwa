#矢召喚とOwner指定
summon arrow ~ ~ ~ {Tags:["discharge","projectile"],life:1200s,damage:7.0d,Color:-1,Rotation:[0.0f,0.0f]}
data modify entity @e[tag=discharge,limit=1] Owner set from entity @s HandItems[0].tag.Owner
# -180～179の角度乱数によるベクトル測定
loot spawn 0.0 0.0 0.0 loot wancomatter:random/0-360
tag @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] add random
execute as @e[tag=random,limit=1] store result entity @s Rotation[0] float 0.1 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 10
execute unless score @s counter matches 201.. as @e[tag=random,limit=1] rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
execute if score @s counter matches 201..400 as @e[tag=random,limit=1] rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.414
execute if score @s counter matches 401..600 as @e[tag=random,limit=1] rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.732
execute if score @s counter matches 601..800 as @e[tag=random,limit=1] rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^2
execute if score @s counter matches 801..1000 as @e[tag=random,limit=1] rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^2.236
execute if score @s counter matches 1001.. as @e[tag=random,limit=1] rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^2.449
execute store result score #dummy Cooldown1 run data get entity @e[tag=random,limit=1] Pos[0] 150
execute store result score #dummy Cooldown2 run data get entity @e[tag=random,limit=1] Pos[2] 150
# #dummyのdummyに-16～15の乱数をとる -16→0に
execute store result score #dummy dummy run data get entity @e[tag=discharge,limit=1] UUID[1] 1
scoreboard players operation #dummy dummy %= #32 counter
scoreboard players remove #dummy dummy 16
execute if score #dummy dummy matches ..-16 run scoreboard players set #dummy dummy 0
#乱数に応じた勢いにする
execute as @e[tag=discharge] store result entity @s Motion[0] double 0.0001 run scoreboard players operation #dummy Cooldown1 *= #dummy dummy
execute as @e[tag=discharge] store result entity @s Motion[2] double 0.0001 run scoreboard players operation #dummy Cooldown2 *= #dummy dummy
execute store result entity @e[tag=discharge,limit=1] Motion[1] double -0.00023 run scoreboard players get @s counter
#後処理
tag @e[tag=discharge] remove discharge
kill @e[tag=random]
#ループ処理

scoreboard players add @s counter 7
scoreboard players add @s subcounter 1
execute if score @s subcounter matches 1..8 run function wancomatter:skills/arrow/07/arrowrain
