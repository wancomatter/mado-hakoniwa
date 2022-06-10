playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.5 0.55
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.5 1.1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 0.8

particle minecraft:cloud ~ ~ ~ 0 0 0 1 400 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 1 100 force @a

execute rotated ~060 0 run summon minecraft:armor_stand ^ ^-0.3 ^1.5 {Tags:["this","antares_bit","antares_bit1","antares_bit_big"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~180 0 run summon minecraft:armor_stand ^ ^-0.3 ^1.5 {Tags:["this","antares_bit","antares_bit2","antares_bit_big"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~300 0 run summon minecraft:armor_stand ^ ^-0.3 ^1.5 {Tags:["this","antares_bit","antares_bit3","antares_bit_big"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}],Pose:{Head:[180f,0f,0f]}}
execute rotated ~042 0 run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["this","antares_bit","antares_bit_r","antares_bit1"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}]}
execute rotated ~162 0 run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["this","antares_bit","antares_bit_r","antares_bit2"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}]}
execute rotated ~282 0 run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["this","antares_bit","antares_bit_r","antares_bit3"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}]}
execute rotated ~078 0 run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["this","antares_bit","antares_bit_l","antares_bit1"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}]}
execute rotated ~198 0 run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["this","antares_bit","antares_bit_l","antares_bit2"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}]}
execute rotated ~318 0 run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["this","antares_bit","antares_bit_l","antares_bit3"],Small:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{Enchantments:[{}]}}]}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players set @e[tag=this,tag=antares_bit1] subcounter 1
scoreboard players set @e[tag=this,tag=antares_bit2] subcounter 2
scoreboard players set @e[tag=this,tag=antares_bit3] subcounter 3
scoreboard players set @e[tag=this,tag=antares_bit_big] subcounter2 0
execute as @e[tag=this] at @s facing entity @a[tag=user,limit=1] feet run tp @s ~ ~ ~ ~ 0
tag @s add antares_using
tag @e[tag=this] remove this
