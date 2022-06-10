#execute if entity @e[tag=this,limit=1,y_rotation=-45..45] run scoreboard players set @s dummy -1
#execute if entity @e[tag=this,limit=1,y_rotation=45..135] run scoreboard players set @s dummy -2
#execute if entity @e[tag=this,limit=1,y_rotation=135..225] run scoreboard players set @s dummy -3
#execute if entity @e[tag=this,limit=1,y_rotation=225..315] run scoreboard players set @s dummy -4

execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~1 ~ ~0 {Tags:["this"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[-90f,0f]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~0 ~ ~1 {Tags:["this"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[0f,0f]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~-1 ~ ~0 {Tags:["this"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[90f,0f]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~0 ~ ~-1 {Tags:["this"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[180f,0f]}
execute as @e[tag=this] at @s unless block ~ ~1 ~ #wancomatter:air run kill @s
execute as @e[tag=this] at @s unless block ^1 ^1 ^ #wancomatter:air run tag @s add b4left
execute as @e[tag=this] at @s unless block ^-1 ^1 ^ #wancomatter:air run tag @s add b4right
kill @e[tag=this,tag=!b4left,tag=!b4right]
execute unless entity @e[tag=this,limit=1] run function wancomatter:boss/arctic/target/hit_wall2
#tag @e[tag=this,tag=b4left,tag=b4right] add b4both_sides
execute as @e[tag=this] at @s run function wancomatter:boss/arctic/target/loop2
tag @s remove target
tag @e[tag=this] add target
tag @e[tag=this] remove this