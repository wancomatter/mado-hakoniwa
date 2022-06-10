# 必要なスコア、タグを付与
scoreboard players set @s Cooldown3_max 1
tag @s add NoRandomFly

# 羽のPose制御
scoreboard players set @s SelectItemSlot1 -1
data merge storage wnkm:boss {pose:{x:0,y:0,z:20,time:10}}
execute as @e[tag=dragon1_stand_wingL] run function wancomatter:boss/dragon/pose_set
data merge storage wnkm:boss {pose:{x:0,y:0,z:-20,time:10}}
execute as @e[tag=dragon1_stand_wingR] run function wancomatter:boss/dragon/pose_set

# 既に存在するAECをキル
execute as @e[tag=dragon_move_target] if score @s playerNumber = @e[tag=dragon1_stand_body,limit=1,sort=nearest] playerNumber run kill @s
# x座標が正か負かで分岐してaec召喚
execute store result score #dragonBoss Cooldown1 run data get entity @s Pos[0] 100
execute if score #dragonBoss Cooldown1 matches 0.. run summon marker 96 ~ 0.0 {Tags:["dragon_move_target","dragon_move_s3_x+","dragon_init"]}
execute unless score #dragonBoss Cooldown1 matches 0.. run summon marker -96 ~ 0.0 {Tags:["dragon_move_target","dragon_move_s3_x-","dragon_init"]}

# playerNumber設定
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
#data modify entity @s Rotation[0] set from entity @e[tag=dragon_init,limit=1] Rotation[0]

# タゲ先との距離を測定してスコア代入
#tag @s add target_distance
#execute as @e[tag=dragon_init] at @s run function wancomatter:operation/distance
#scoreboard players operation @s page = @e[tag=dragon_init,limit=1] dummy
#scoreboard players operation @s page *= #10 counter
#scoreboard players operation @s page /= @s aviate
scoreboard players set @s page 0

# 後処理
tag @e[tag=dragon_init] remove dragon_init