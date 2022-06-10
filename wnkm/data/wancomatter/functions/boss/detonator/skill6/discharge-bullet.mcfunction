scoreboard players operation #dummy teamNumber = @s teamNumber
loot spawn 0 0 0 loot wancomatter:random/2.-50_49
#-1～0までの乱数を取得し#dummyのsubcounter2に移す
execute store result score #dummy subcounter2 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 0.0001
#-64～63までの乱数を取得し、((乱数)+337)*2して546～800までの乱数にした後に#dummyのsubcounterに移す
execute store result score #dummy subcounter run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 1.28
scoreboard players add #dummy subcounter 137
scoreboard players operation #dummy subcounter *= #counter2 counter
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
#3個目のdischargeのRotationの値をsubcounter2に応じて変化させる
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1elecflow"],Rotation:[0f,0f]}
scoreboard players operation #dummy dummy = @s Cooldown2_max
execute if score #dummy subcounter2 matches ..-1 store result entity @e[tag=discharge,limit=1] Rotation[0] float 0.01 run scoreboard players remove #dummy dummy 9000
execute if score #dummy subcounter2 matches 0.. store result entity @e[tag=discharge,limit=1] Rotation[0] float 0.01 run scoreboard players add #dummy dummy 9000
#3個目のdischargeのy座標を設定.[#dummyのsubcounter(乱数取得の上昇値)+@sのCooldown3_max(実行時座標)]
execute store result entity @e[tag=discharge,limit=1] Pos[1] double 0.01 run scoreboard players operation #dummy subcounter += @s Cooldown3_max
#3個目のdischargeのUUIDMostから0～3までの乱数を#dummyのdummyで取得
execute store result score #dummy dummy run data get entity @e[tag=discharge,limit=1] UUID[1] 1
scoreboard players operation #dummy dummy %= #4 counter
##dummyのdummyの値に応じてdischargeのtpの距離を変動
execute if score #dummy dummy matches 3 as @e[tag=discharge] at @s run tp @s ^ ^ ^0.5
execute if score #dummy dummy matches 2 as @e[tag=discharge] at @s run tp @s ^ ^ ^1.8
execute if score #dummy dummy matches 1 as @e[tag=discharge] at @s run tp @s ^ ^ ^3.8
execute if score #dummy dummy matches 0 as @e[tag=discharge] at @s run tp @s ^ ^ ^6.0
#dischargeのRotation[1]をターゲット座標に合わせて設定.更にのRotation[0]を設定した向きにする:@sのCooldown2_max
execute as @e[tag=discharge,limit=1] at @s positioned ~ ~-0.6 ~ facing entity @a[tag=b1s6target,sort=nearest,limit=1] feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute store result entity @e[tag=discharge,limit=1] Rotation[0] float 0.01 run scoreboard players get @s Cooldown2_max
#後処理
scoreboard players reset #dummy
tag @e[tag=discharge] remove discharge