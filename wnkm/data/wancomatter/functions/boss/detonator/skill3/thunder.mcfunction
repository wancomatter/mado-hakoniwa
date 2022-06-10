scoreboard players operation #dummy teamNumber = @s teamNumber
#1個目のdischargeのUUIDMostから-180～179までの乱数を取得しsubcounter2に移す
loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result score @s subcounter2 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
#2個目のdischargeのRotationにsubcounter2を代入.更に次の雷周期となるsubcounter2の為に乱数幅を20～50に調整
summon minecraft:marker ~0.5 ~-5 ~0.5 {Tags:["discharge"],Rotation:[0f,0f]}
execute store result entity @e[tag=discharge,limit=1] Rotation[0] float 1 run scoreboard players get @s subcounter2
execute if entity @s[scores={subcounter2=..-1}] run scoreboard players operation @s subcounter2 *= #-1 counter
scoreboard players operation @s subcounter2 /= #12 counter
scoreboard players add @s subcounter2 20
#2個目のdischargeのUUIDMostから0～3までの乱数を#dummyのdummyで取得し0を4にset.負を正にする
execute store result score #dummy dummy run data get entity @e[tag=discharge,limit=1] UUID[1] 1
scoreboard players operation #dummy dummy %= #4 counter
##dummyのdummyの値に応じてdischargeのtpの距離を変動.更にalignでブロック中心に来るように調整
execute if score #dummy dummy matches 1 as @e[tag=discharge] at @s run tp @s ^ ^ ^1
execute if score #dummy dummy matches 2 as @e[tag=discharge] at @s run tp @s ^ ^ ^2
execute if score #dummy dummy matches 3 as @e[tag=discharge] at @s run tp @s ^ ^ ^3
execute if score #dummy dummy matches 0 as @e[tag=discharge] at @s run tp @s ^ ^ ^4
scoreboard players reset #dummy dummy
execute as @e[tag=discharge] at @s align xyz run tp @s ~0.5 ~ ~0.5
#dischargeに雷を落とす
execute as @e[tag=discharge] at @s run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.2 7 0.2 1 44 normal @a
execute as @e[tag=discharge] at @s run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.01 7 0.01 1 11 force @a
execute as @e[tag=discharge] at @s run particle minecraft:end_rod ~ ~ ~ 0 7 0 0.3 24 normal @a
execute as @e[tag=discharge] at @s run particle minecraft:end_rod ~ ~ ~ 0 7 0 0.3 6 force @a
execute as @e[tag=discharge] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~-7 ~ 1.2 2
execute as @e[tag=discharge] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~-7 ~ 1.2 2
execute as @e[tag=discharge] at @s positioned ~-1 ~-7 ~-1 as @e[dx=2,dy=13,dz=2,tag=!detonator] unless score #dummy teamNumber = @s teamNumber run function wancomatter:boss/detonator/skill3/hit-entity

scoreboard players reset #dummy teamNumber
scoreboard players set @s subcounter 0
kill @e[tag=discharge]