#矢召喚とOwner指定
summon arrow ~ ~4 ~ {Color:-1,Fire:32767s,Motion:[0.0d,1.0d,0.0d],Rotation:[0.0f,0.0f],Tags:["discharge","projectile","b1firearrow","wnkm.owned","wnkm.round"],damage:16.0d,item:{components:{"minecraft:custom_data":{CustomPotionColor:-1}},count:1,id:"minecraft:arrow"},life:1200s}
data modify entity @e[tag=discharge,limit=1] Owner set from entity @a[tag=meteorArrowP,limit=1] UUID
# -180～179の角度乱数によるベクトル測定
loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 1
scoreboard players remove #dummy dummy 180
execute store result entity @e[tag=discharge,limit=1] Pos[0] double 0.1 run scoreboard players operation #dummy dummy += #dummy counter
kill @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}}]
loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 1
scoreboard players remove #dummy dummy 180
execute store result entity @e[tag=discharge,limit=1] Pos[2] double 0.1 run scoreboard players operation #dummy dummy += #dummy subcounter
kill @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}}]

summon marker 0.0 0.0 0.0 {Rotation:[0.0f,0.0f],Tags:["discharge2","wnkm.owned","wnkm.round"]}
loot spawn 0 0 0 loot wancomatter:random/0-360
execute as @e[tag=discharge2,limit=1] store result entity @s Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 1
kill @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}}]
execute as @e[tag=discharge2,limit=1] rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^2.5
execute store result score #dummy Cooldown1 run data get entity @e[tag=discharge2,limit=1] Pos[0] 150
execute store result score #dummy Cooldown2 run data get entity @e[tag=discharge2,limit=1] Pos[2] 150
# #dummyのdummyに-16～15の乱数をとる
execute store result score #dummy dummy run data get entity @e[tag=discharge2,limit=1] UUID[1] 1
scoreboard players operation #dummy dummy %= #32 counter
scoreboard players remove #dummy dummy 16
execute if score #dummy dummy matches -16 run scoreboard players set #dummy dummy 0
#乱数に応じた勢いにする
execute as @e[tag=discharge] store result entity @s Motion[0] double 0.0001 run scoreboard players operation #dummy Cooldown1 *= #dummy dummy
execute as @e[tag=discharge] store result entity @s Motion[2] double 0.0001 run scoreboard players operation #dummy Cooldown2 *= #dummy dummy
#後処理
tag @e[tag=discharge] remove discharge
kill @e[tag=discharge2]
#ループ処理

scoreboard players add #dummy subcounter2 1
execute if score #dummy subcounter2 matches 1..39 run function wancomatter:boss/detonator/skill8/spreadarrow
