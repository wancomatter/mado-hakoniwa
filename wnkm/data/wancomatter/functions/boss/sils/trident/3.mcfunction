function wancomatter:boss/sils/pose_first
scoreboard players remove @s Cooldown4 30
scoreboard players remove @s Cooldown5 20
scoreboard players remove @s Cooldown6 170
#
scoreboard players add @s Cooldown4_max 50
scoreboard players remove @s Cooldown5_max 20
scoreboard players add @s Cooldown6_max 20
scoreboard players set @s Cooldown7_max 7


playsound minecraft:item.trident.throw master @a ~ ~ ~ 3 1
data modify entity @s HandItems set value [{id:"minecraft:trident",Count:1b},{}]

execute positioned ^ ^ ^7 at @a[sort=nearest,limit=1,distance=..30,scores={maxHP=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target","target_distance"],Rotation:[0f,-90f]}
execute if entity @e[tag=target,limit=1] facing entity @e[tag=target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
execute rotated ~ 0 run summon minecraft:trident ^0.35 ^1.5 ^1 {Tags:["this","silsTrident"],life:1200s}
execute unless entity @e[tag=target,limit=1] positioned ^ ^ ^20 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target","target_distance"],Rotation:[0f,-90f]}
execute positioned ^ ^ ^1 as @e[tag=this] run function wancomatter:operation/distance
execute as @e[tag=this] run scoreboard players operation @s dummy *= @s dummy
execute as @e[tag=this] run scoreboard players operation @e[tag=target] dummy = @s dummy
execute if entity @e[tag=target,limit=1,distance=16..20] run scoreboard players operation @e[tag=target] dummy *= #9 counter
execute if entity @e[tag=target,limit=1,distance=16..20] run scoreboard players operation @e[tag=target] dummy /= #8 counter
execute if entity @e[tag=target,limit=1,distance=20..22.5] run scoreboard players operation @e[tag=target] dummy *= #8 counter
execute if entity @e[tag=target,limit=1,distance=20..22.5] run scoreboard players operation @e[tag=target] dummy /= #7 counter
execute if entity @e[tag=target,limit=1,distance=22.5..25] run scoreboard players operation @e[tag=target] dummy *= #5 counter
execute if entity @e[tag=target,limit=1,distance=22.5..25] run scoreboard players operation @e[tag=target] dummy /= #4 counter
execute if entity @e[tag=target,limit=1,distance=25..27] run scoreboard players operation @e[tag=target] dummy *= #4 counter
execute if entity @e[tag=target,limit=1,distance=25..27] run scoreboard players operation @e[tag=target] dummy /= #3 counter
execute if entity @e[tag=target,limit=1,distance=27..] run scoreboard players operation @e[tag=target] dummy *= #3 counter
execute if entity @e[tag=target,limit=1,distance=27..] run scoreboard players operation @e[tag=target] dummy /= #2 counter
scoreboard players operation @e[tag=target] dummy /= #10 counter
scoreboard players operation @e[tag=target] dummy /= #5 counter
execute as @e[tag=target] at @s run function wancomatter:operation/0.01tp
loot spawn ~ -10 ~ loot wancomatter:random/3_signed
execute as @e[tag=target] store result score @s counter run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.3_signed"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.3_signed"}].Amount 120
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.3_signed"}]}}}]
execute as @e[tag=this] at @s facing entity @e[tag=target,limit=1,sort=nearest] feet as @e[tag=target,limit=1,sort=nearest] positioned 0.0 0.0 0.0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=target] store result score @s dummy run data get entity @s Rotation[0] 100
execute as @e[tag=target] store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s dummy += @s counter
execute as @e[tag=target] at @s run summon armor_stand ^ ^ ^1.25 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
kill @e[tag=target]
tag @e[tag=this] remove this
