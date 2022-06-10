## 102targe      -> 手榴弾を投げる対象
## 102target_AEC -> 手榴弾を投げる対象の1tick前の座標を記録したAEC


#引き継ぎ
tag @s add it
execute as @e[tag=102target_delay] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @s add 102target
execute as @e[tag=102pot_target] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] Cooldown5 run tag @s add 102target_AEC
execute unless entity @e[tag=102target,limit=1] run tag @e[tag=102target_delay,limit=1,sort=nearest] add 102target
tag @s remove it

#なんか
execute as @e[tag=102target_AEC] store result score @s Cooldown3 run data get entity @e[tag=102target,limit=1] Pos[0] 100
execute as @e[tag=102target_AEC] store result score @s Cooldown4 run data get entity @e[tag=102target,limit=1] Pos[2] 100
summon area_effect_cloud 0.0 0.30 0.0 {Tags:["102vector"],Duration:1}
execute as @e[tag=102target_AEC] store result entity @e[tag=102vector,limit=1] Pos[0] double 0.01 run scoreboard players operation @s Cooldown3 -= @s Cooldown1
execute as @e[tag=102target_AEC] store result entity @e[tag=102vector,limit=1] Pos[2] double 0.01 run scoreboard players operation @s Cooldown4 -= @s Cooldown2

#長さを測るやつ
tag @e[tag=102target] add target_distance
execute as @e[tag=102vector] run function wancomatter:operation/distance
#長さ分tpするやつ
execute facing entity @e[tag=102target,limit=1] feet as @e[tag=102vector] positioned as @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=102vector] run scoreboard players operation @s dummy /= #2 counter
execute as @e[tag=102vector] run function wancomatter:operation/0.01tp

#ポーション召喚とMotion代入
execute anchored eyes run summon potion ^ ^-0.5 ^1 {Motion:[0d,0d,0d],Fire:32767s,Tags:["this"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:65280,CustomPotionEffects:[{Id:31b,Amplifier:49b,ShowParticles:0b,Duration:1},{Id:31b,Amplifier:59b,ShowParticles:0b,Duration:1}]}}}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=102vector,limit=1] Pos
execute store result entity @e[tag=this,limit=1] Item.tag.CustomPotionEffects[0].Duration int 1 run scoreboard players get @s playerNumber



#バックステップ
execute facing entity @e[tag=102target,limit=1,sort=nearest] feet rotated ~ 0 positioned 0.0 0.5 0.0 run tp @e[tag=102vector] ^ ^ ^-1
data modify entity @s Motion set from entity @e[tag=102vector,limit=1] Pos

#後処理#1
tag @e[tag=102vector,limit=1] remove 102vector
kill @e[tag=102target_AEC]


#演出とか
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.0 0.8
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.0 0.8
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1.0 0.8

#後処理#2
tag @s remove 102skeleton_throw_pot
tag @e[tag=102target] remove 102target_delay
tag @e[tag=102target] remove 102target
tag @e[tag=this] remove this
