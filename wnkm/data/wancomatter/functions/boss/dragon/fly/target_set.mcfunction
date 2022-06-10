# x座標: 現在地と-50 ~ 50の乱数値の合計値、ただしx座標>20、<-20の時は乱数の最大幅・最小幅が変動する
# y座標: 現在地と同値
# z座標: -25 ~ 25の乱数値

# storage初期値を設定
data merge storage wnkm:boss {pos:[0d,0d,0d]}

# pos[0]
execute store result score #dragonBoss Cooldown1 run data get entity @s Pos[0] 100
data merge storage random: {min:-5000,max:5000}
execute if score #dragonBoss Cooldown1 matches 5000.. run scoreboard players set #dragonBoss dummy 10000
execute if score #dragonBoss Cooldown1 matches 5000.. store result storage random: max int 1 run scoreboard players operation #dragonBoss dummy -= #dragonBoss Cooldown1
execute if score #dragonBoss Cooldown1 matches ..-5000 run scoreboard players set #dragonBoss dummy -10000
execute if score #dragonBoss Cooldown1 matches ..-5000 store result storage random: min int 1 run scoreboard players operation #dragonBoss dummy -= #dragonBoss Cooldown1
execute store result score #dragonBoss Cooldown2 run function wancomatter:operation/random
execute store result storage wnkm:boss pos[0] double 0.01 run scoreboard players operation #dragonBoss Cooldown1 += #dragonBoss Cooldown2

# pos[1]
data modify storage wnkm:boss pos[1] set from entity @s Pos[1]

# pos[2]
data merge storage random: {min:-15,max:15}
execute store result storage wnkm:boss pos[2] double 1 run function wancomatter:operation/random

# タゲ先にmarker召喚
execute as @e[tag=dragon_move_target] if score @s playerNumber = @e[tag=dragon1_stand_body,limit=1,sort=nearest] playerNumber run kill @s
summon area_effect_cloud ~ ~ ~ {Tags:["dragon_move_target","dragon_init"],Duration:300}
data modify entity @e[tag=dragon_init,limit=1] Pos set from storage wnkm:boss pos
scoreboard players operation @e[tag=dragon_init,limit=1] playerNumber = @s playerNumber
#execute as @e[tag=dragon_init,limit=1] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force

# タゲ先にfacingした時のRotation[0]を取り出し、旋回処理用のスコアを保存
execute as @e[tag=dragon_init,limit=1] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute store result score #dragonBoss Cooldown3 run data get entity @s Rotation[0] 100
execute store result score #dragonBoss Cooldown4 run data get entity @e[tag=dragon_init,limit=1] Rotation[0] 100
execute if score #dragonBoss Cooldown3 < #dragonBoss Cooldown4 run scoreboard players operation @s pageChange = #dragonBoss Cooldown4
execute if score #dragonBoss Cooldown3 < #dragonBoss Cooldown4 run scoreboard players operation @s pageChange -= #dragonBoss Cooldown3
execute unless score #dragonBoss Cooldown3 < #dragonBoss Cooldown4 run scoreboard players operation @s pageChange = #dragonBoss Cooldown3
execute unless score #dragonBoss Cooldown3 < #dragonBoss Cooldown4 run scoreboard players operation @s pageChange -= #dragonBoss Cooldown4
execute if score @s pageChange matches ..-18001 run scoreboard players add @s pageChange 36000
execute if score @s pageChange matches 18000.. run scoreboard players remove @s pageChange 36000

scoreboard players set @s page 80

# 後処理
tag @e[tag=dragon_init] remove dragon_init