execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~1 ~ ~1 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[-90.0f,0.0f],Tags:["this2","wnkm.owned","wnkm.round"]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~1 ~ ~-1 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[-90.0f,0.0f],Tags:["this2","wnkm.owned","wnkm.round"]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~1 ~ ~1 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],Tags:["this2","wnkm.owned","wnkm.round"]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~-1 ~ ~1 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],Tags:["this2","wnkm.owned","wnkm.round"]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~-1 ~ ~1 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f],Tags:["this2","wnkm.owned","wnkm.round"]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~-1 ~ ~-1 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f],Tags:["this2","wnkm.owned","wnkm.round"]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~1 ~ ~-1 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[180.0f,0.0f],Tags:["this2","wnkm.owned","wnkm.round"]}
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~-1 ~ ~-1 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[180.0f,0.0f],Tags:["this2","wnkm.owned","wnkm.round"]}
execute as @e[tag=this2] at @s unless block ~ ~1 ~ #wancomatter:air run kill @s
#execute as @e[tag=this2] at @s unless block ^ ^ ^1 #wancomatter:air run kill @s
execute as @e[tag=this2] at @s unless block ^1 ^1 ^ #wancomatter:air run tag @s add b4left
execute as @e[tag=this2] at @s unless block ^-1 ^1 ^ #wancomatter:air run tag @s add b4right
kill @e[tag=this2,tag=!b4left,tag=!b4right]
tag @e[tag=this2] add this
tag @e[tag=this2] remove this2
