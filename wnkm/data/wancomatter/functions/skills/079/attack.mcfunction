scoreboard players add @s counter 1
tag @s remove focus_entity

playsound minecraft:entity.snow_golem.hurt master @a ~ ~ ~ 1.3 2
playsound minecraft:entity.snow_golem.shoot master @a ~ ~ ~ 1.3 1.2
execute anchored eyes run summon minecraft:item ^ ^ ^ {Fire:2s,Health:100,Tags:["first","snow_golem_bullet","item_bullet"],Item:{id:"minecraft:snowball",Count:1b,tag:{}},PickupDelay:32767s,Age:5900s}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber

#ターゲット指定
execute positioned ^ ^ ^3 as @e[scores={maxHP=1..},distance=..20,tag=!projectile_wall] unless score @s teamNumber = @e[tag=first,limit=1] teamNumber run tag @s add 079target
execute as @a[tag=079target,tag=!boss] if data entity @s ActiveEffects[{Id:14}] unless data entity @s ActiveEffects[{Id:25}] run tag @s remove 079target
execute positioned ^ ^ ^3 at @e[tag=079target,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["target"],Duration:1}
tag @e[tag=079target] remove 079target
#ダミーエンティティ召喚
loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] add vector
#長さを測るやつ
tag @e[tag=target,limit=1,sort=nearest] add target_distance
execute as @e[tag=vector,limit=1] run function wancomatter:operation/distance
#長さ分tpするやつ
execute facing entity @e[tag=target,limit=1,sort=nearest] feet as @e[tag=vector] positioned as @s run tp @s ~ ~ ~ ~ 0
#execute as @e[tag=vector,limit=1] run scoreboard players operation @s dummy /= #2 counter
execute as @e[tag=vector,limit=1] run function wancomatter:operation/0.01tp
#Motionを乱数含め代入
execute as @e[tag=vector,limit=1] store result score @s Cooldown1 run data get entity @s Pos[0] 100
execute as @e[tag=vector,limit=1] store result score @s Cooldown2 run data get entity @s Pos[2] 100
execute as @e[tag=vector,limit=1] store result score @s Cooldown3 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 0.4
execute as @e[tag=vector,limit=1] store result score @s Cooldown4 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 0.4
execute as @e[tag=vector,limit=1] store result entity @s Pos[0] double 0.01 run scoreboard players operation @s Cooldown1 += @s Cooldown3
execute as @e[tag=vector,limit=1] store result entity @s Pos[2] double 0.01 run scoreboard players operation @s Cooldown2 += @s Cooldown4
data modify entity @e[tag=first,limit=1,sort=nearest] Motion set from entity @e[tag=vector,limit=1] Pos

#後処理
kill @e[type=item,tag=vector]
tag @e[tag=target] remove target
tag @e[tag=first] remove first
scoreboard players reset #dummy