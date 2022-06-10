#1on1の処理をする為のアマスタを召喚
summon armor_stand 0 4 0 {Tags:["1on1_stand","this","stable"],Marker:1b,Invisible:1b,NoGravity:1b}
#2人に1on1_waitingのタグを付与
scoreboard players operation #dummy playerNumber = @e[tag=1on1_entry,tag=flag,limit=1] playerNumber
execute as @a[tag=1on1_searching] if score @s playerNumber = #dummy playerNumber run tag @s add 1on1_waiting
tag @s add 1on1_waiting
tag @a[tag=1on1_searching,tag=1on1_waiting] remove 1on1_searching
#1on1_waiting起点で色々やる
tag @a[tag=1on1_waiting] add 1on1_battle
execute as @a[tag=1on1_waiting] at @s run tellraw @s ["",{"text":"[1on1] ","color":"gold"},{"selector":"@a[tag=1on1_waiting,limit=1,sort=nearest,distance=0.01..]"},{"text":"との1on1を開始します……"}]
tag @a[tag=1on1_waiting] remove 1on1_waiting
#初期スコア設定
scoreboard players set @e[tag=this] counter -110
scoreboard players set @e[tag=this] subcounter2 180
#playerNumberを保存するとか何とか
scoreboard players operation @e[tag=this] Cooldown1 = #dummy playerNumber
scoreboard players operation @e[tag=this] Cooldown2 = @s playerNumber
#ステージ情報の移行
scoreboard players operation @e[tag=this] dummy = @e[tag=1on1_entry,tag=flag,limit=1] subcounter2
#ボスバー作成
execute as @e[tag=this] if score @s dummy matches 1 run function wancomatter:game/1on1/bossbar/1_ruin
execute as @e[tag=this] if score @s dummy matches 2 run function wancomatter:game/1on1/bossbar/2_dream
execute as @e[tag=this] if score @s dummy matches 3 run function wancomatter:game/1on1/bossbar/3_mine
execute as @e[tag=this] if score @s dummy matches 4 run function wancomatter:game/1on1/bossbar/4_cake
#ステージ情報に応じたエンドゲートウェイポータル設置
execute as @e[tag=this] if score @s dummy matches 1 run fill ~ ~ ~ ~ ~ ~ minecraft:end_gateway{Age:-9223372036854775808L,ExactTeleport:1,ExitPortal:{X:79,Y:58,Z:-1}} replace minecraft:birch_sign
execute as @e[tag=this] if score @s dummy matches 2 run fill ~ ~ ~ ~ ~ ~ minecraft:end_gateway{Age:-9223372036854775808L,ExactTeleport:1,ExitPortal:{X:-80,Y:58,Z:0}} replace minecraft:birch_sign
execute as @e[tag=this] if score @s dummy matches 3 run fill ~ ~ ~ ~ ~ ~ minecraft:end_gateway{Age:-9223372036854775808L,ExactTeleport:1,ExitPortal:{X:0,Y:58,Z:80}} replace minecraft:birch_sign
execute as @e[tag=this] if score @s dummy matches 4 run fill ~ ~ ~ ~ ~ ~ minecraft:end_gateway{Age:-9223372036854775808L,ExactTeleport:1,ExitPortal:{X:0,Y:58,Z:-80}} replace minecraft:birch_sign
#演出
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:portal ~ ~ ~ 0 0 0 2 200 normal @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2
#後処理
tag @e[tag=this] remove this
scoreboard players reset #dummy playerNumber
kill @e[tag=1on1_entry,tag=flag,limit=1]
