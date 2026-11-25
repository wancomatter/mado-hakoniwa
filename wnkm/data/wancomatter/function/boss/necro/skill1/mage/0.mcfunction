playsound minecraft:entity.skeleton.step master @a ^ ^ ^1 1.5 1
playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 1.2
execute anchored eyes run summon minecraft:item ^ ^ ^ {Age:5900s,Fire:2s,Health:100,Item:{count:1,id:"minecraft:bone"},PickupDelay:32767s,Tags:["first","necro_s1_mage_bone","wnkm.owned","wnkm.round"]}

#ターゲット指定
execute positioned ^ ^ ^5 at @a[limit=1,sort=nearest,gamemode=!spectator] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["target","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
#ダミーエンティティ召喚
loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] add vector
#長さを測るやつ
tag @e[tag=target] add target_distance
execute as @e[tag=vector,limit=1] run function wancomatter:operation/distance
#長さ分tpするやつ
execute facing entity @e[tag=target,limit=1] feet as @e[tag=vector] positioned as @s run tp @s ~ ~ ~ ~ 0
#execute as @e[tag=vector,limit=1] run scoreboard players operation @s dummy /= #2 counter
execute as @e[tag=vector,limit=1] run function wancomatter:operation/0.01tp
#Motionを乱数含め代入
execute as @e[tag=vector,limit=1] store result score @s Cooldown1 run data get entity @s Pos[0] 100
execute as @e[tag=vector,limit=1] store result score @s Cooldown2 run data get entity @s Pos[2] 100
execute as @e[tag=vector,limit=1] store result score @s Cooldown3 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 0.4
execute as @e[tag=vector,limit=1] store result score @s Cooldown4 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 0.4
execute as @e[tag=vector,limit=1] store result entity @s Pos[0] double 0.01 run scoreboard players operation @s Cooldown1 += @s Cooldown3
execute as @e[tag=vector,limit=1] store result entity @s Pos[2] double 0.01 run scoreboard players operation @s Cooldown2 += @s Cooldown4
data modify entity @e[tag=first,limit=1,sort=nearest] Motion set from entity @e[tag=vector,limit=1] Pos

#後処理
kill @e[type=item,tag=vector]
tag @e[tag=target] remove target
tag @e[tag=first] remove first
scoreboard players reset #dummy
