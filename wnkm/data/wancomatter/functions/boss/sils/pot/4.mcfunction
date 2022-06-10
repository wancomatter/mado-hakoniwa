data modify entity @s Pose.RightArm set value [-90f,-10f,50f]
function sirasagi:sirasagi/pose_r_first
scoreboard players add @s counter4 100
scoreboard players add @s counter5 20
#scoreboard players set @s counter6 60
scoreboard players set @s counter2 10
playsound minecraft:entity.experience_bottle.throw master @a ~ ~ ~ 3 0.5
data modify entity @s HandItems[0] set value {}

execute positioned ^ ^ ^10 at @a[sort=nearest,limit=1,distance=..16,gamemode=!spectator,gamemode=!creative] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target","target_distance"],Rotation:[0f,-90f]}
execute unless entity @e[tag=target,limit=1] positioned ^ ^ ^10 at @a[sort=nearest,limit=1,distance=..16] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target","target_distance"],Rotation:[0f,-90f]}
execute if entity @e[tag=target,limit=1] facing entity @e[tag=target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
summon minecraft:potion ~ ~1.5 ~ {Tags:["this","sirasagiPotion"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}},Fire:2s}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute unless entity @e[tag=target,limit=1] positioned ^ ^ ^10 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target","target_distance"],Rotation:[0f,-90f]}
execute as @e[tag=this] run function sirasagi:operation/distance
execute as @e[tag=this] run scoreboard players operation @e[tag=target] dummy = @s dummy
execute as @e[tag=target] run scoreboard players operation @s dummy2 = @s dummy
scoreboard players operation @e[tag=target] dummy /= #10 counter
scoreboard players operation @e[tag=target] dummy2 /= #3 counter
execute as @e[tag=target] at @s run function sirasagi:operation/0.01tp
loot spawn ~ -10 ~ loot sirasagi:random/3_signed
execute as @e[tag=target] store result score @s counter run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.3_signed"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.3_signed"}].Amount 60
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.3_signed"}]}}}]
execute as @e[tag=this] at @s facing entity @e[tag=target,limit=1,sort=nearest] feet as @e[tag=target,limit=1,sort=nearest] positioned 0.0 0.0 0.0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=target] store result score @s dummy run data get entity @s Rotation[0] 100
execute as @e[tag=target] store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s dummy += @s counter

execute as @a[distance=..20] positioned as @s if score @s playerNumber = @e[tag=pot_target,limit=1,sort=nearest] playerNumber run tag @s add target_p
execute as @e[tag=target] at @s positioned ~ ~0.16 ~ run summon armor_stand ^ ^ ^0.6 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[0f,-90f]}
execute as @e[tag=vector] store result score @s counter1 run data get entity @a[tag=target_p,limit=1,sort=nearest] Pos[0] 100
execute as @e[tag=vector] store result score @s counter2 run data get entity @a[tag=target_p,limit=1,sort=nearest] Pos[2] 100
execute as @e[tag=vector] run scoreboard players operation @s counter1 -= @e[tag=pot_target,limit=1] counter1
execute as @e[tag=vector] run scoreboard players operation @s counter2 -= @e[tag=pot_target,limit=1] counter2
tag @a[tag=target_p] remove target_p
execute as @e[tag=vector] run scoreboard players operation @s dummy = @e[tag=target,limit=1] dummy2
execute as @e[tag=vector] at @s run function sirasagi:operation/0.01tp
execute as @e[tag=vector] run scoreboard players operation @s dummy = @s counter1
execute as @e[tag=vector] at @s if score @s dummy matches 0.. run tp @s ~ ~ ~ -90 0
execute as @e[tag=vector] at @s if score @s dummy matches ..-1 run tp @s ~ ~ ~ 90 0
execute as @e[tag=vector] at @s if score @s dummy matches ..-1 run scoreboard players operation @s dummy *= #-1 counter
execute as @e[tag=vector] at @s run function sirasagi:operation/0.01tp
execute as @e[tag=vector] run scoreboard players operation @s dummy = @s counter2
execute as @e[tag=vector] at @s if score @s dummy matches 0.. run tp @s ~ ~ ~ 0 0
execute as @e[tag=vector] at @s if score @s dummy matches ..-1 run tp @s ~ ~ ~ 180 0
execute as @e[tag=vector] at @s if score @s dummy matches ..-1 run scoreboard players operation @s dummy *= #-1 counter
execute as @e[tag=vector] at @s run function sirasagi:operation/0.01tp
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
kill @e[tag=target]
tag @e[tag=this] remove this



