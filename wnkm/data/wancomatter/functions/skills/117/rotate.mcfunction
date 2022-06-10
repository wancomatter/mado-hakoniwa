summon marker ~ ~ ~ {Tags:["vector"]}
data modify entity @e[tag=vector,limit=1] Rotation[0] set from entity @a[tag=this,limit=1] Rotation[0]
execute store result entity @e[tag=vector,limit=1] Rotation[1] float 35.1 run scoreboard players get @s counter
execute as @a[tag=this,limit=1] at @s anchored eyes positioned ^-0.5 ^ ^ anchored feet as @e[tag=vector] rotated as @s run tp @s ^ ^ ^1.5

execute store result score #dummy Cooldown1 run data get entity @s Pos[0] 100
execute store result score #dummy Cooldown2 run data get entity @s Pos[1] 100
execute store result score #dummy Cooldown3 run data get entity @s Pos[2] 100
execute store result score #dummy Cooldown4 run data get entity @e[tag=vector,limit=1] Pos[0] 100
execute store result score #dummy Cooldown5 run data get entity @e[tag=vector,limit=1] Pos[1] 100
execute store result score #dummy Cooldown6 run data get entity @e[tag=vector,limit=1] Pos[2] 100
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation #dummy Cooldown4 -= #dummy Cooldown1
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation #dummy Cooldown5 -= #dummy Cooldown2
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation #dummy Cooldown6 -= #dummy Cooldown3
scoreboard players reset #dummy

kill @e[tag=vector]
