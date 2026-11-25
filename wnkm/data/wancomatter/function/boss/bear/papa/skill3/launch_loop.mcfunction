#スコア増加
scoreboard players remove @s counter 1
#エンティティ召喚
summon snowball ~ ~ ~ {Fire:200s,Glowing:1b,Passengers:[{Invisible:1b,Marker:1b,NoGravity:1b,Tags:["bear_snowrain","wnkm.owned","wnkm.round"],id:"minecraft:armor_stand"}],Tags:["bear_s3ball","this","wnkm.owned","wnkm.round"]}
#繰り返し回数に応じたMotion[1]設定
execute store result entity @e[tag=this,limit=1] Motion[1] double 0.03 run scoreboard players get @s counter
## 角度乱数によるベクトル測定
loot spawn 0 0 0 loot wancomatter:random/0-360
tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}}] add it
execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=it,limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount
execute rotated as @s as @e[tag=it] positioned 0.0 0.0 0.0 run tp @s ^ ^ ^2.0
execute store result score #dummy Cooldown1 run data get entity @e[tag=it,limit=1] Pos[0] 150
execute store result score #dummy Cooldown2 run data get entity @e[tag=it,limit=1] Pos[2] 150
kill @e[tag=it]
## #dummyのdummyに-249～250の乱数をとる
loot spawn 0 0 0 loot wancomatter:random/250
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.250"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}}]
scoreboard players operation #dummy dummy /= #10 counter
#乱数に応じた勢いにする
execute as @e[tag=this] store result entity @s Motion[0] double 0.0001 run scoreboard players operation #dummy Cooldown1 *= #dummy dummy
execute as @e[tag=this] store result entity @s Motion[2] double 0.0001 run scoreboard players operation #dummy Cooldown2 *= #dummy dummy
#タグ除去
tag @e[tag=this] remove this
#繰り返し処理
#execute if score @s counter matches ..19 run function wancomatter:boss/bear/papa/skill3/launch_loop
