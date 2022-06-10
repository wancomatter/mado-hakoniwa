playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1.5 1.5
particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0 110 force @a

execute as @a[distance=..50] positioned as @s if score @s playerNumber = @e[tag=pot_target,limit=1,sort=nearest] playerNumber run tag @s add target
execute at @a[sort=nearest,limit=1,tag=target] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["vector","target_distance"]}
execute as @e[tag=vector] store result score @s counter1 run data get entity @a[tag=target,limit=1,sort=nearest] Pos[0] 270
execute as @e[tag=vector] store result score @s counter2 run data get entity @a[tag=target,limit=1,sort=nearest] Pos[2] 270
execute as @e[tag=vector] run scoreboard players operation @s counter1 -= @e[tag=pot_target,limit=1] counter1
execute as @e[tag=vector] run scoreboard players operation @s counter2 -= @e[tag=pot_target,limit=1] counter2
tag @a[tag=target] remove target
execute facing entity @e[tag=vector] feet run tp @s ~ ~ ~ ~ 0
execute positioned ^ ^ ^1.3 as @e[tag=vector] run function sirasagi:operation/distance
scoreboard players operation @e[tag=vector] dummy *= #4 counter
scoreboard players operation @e[tag=vector] dummy /= #3 counter
execute as @e[tag=vector] facing entity @s feet positioned 0.0 0.45 0.0 run tp @s ~ ~ ~ ~ 0
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
data modify entity @s Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
