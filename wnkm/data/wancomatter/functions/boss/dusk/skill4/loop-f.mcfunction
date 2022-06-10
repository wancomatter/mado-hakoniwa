scoreboard players add @s dummy 1
summon minecraft:armor_stand ^ ^ ^1 {Tags:["this","b3magmaCross","b3magmaL"],Marker:1b,NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
summon minecraft:armor_stand ^ ^ ^1 {Tags:["this","b3magmaCross","b3magmaR"],Marker:1b,NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
#execute unless score @s dummy matches 16.. rotated ~22.5 0 run function wancomatter:boss/dusk/skill4/loop-f
execute unless score @s dummy matches 10.. rotated ~36 0 run function wancomatter:boss/dusk/skill4/loop-f