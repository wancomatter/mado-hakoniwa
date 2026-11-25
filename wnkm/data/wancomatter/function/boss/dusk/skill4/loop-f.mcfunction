scoreboard players add @s dummy 1
summon minecraft:armor_stand ^ ^ ^1 {Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,Tags:["this","b3magmaCross","b3magmaL","wnkm.owned","wnkm.round"],equipment:{head:{count:1,id:"minecraft:magma_block"}}}
summon minecraft:armor_stand ^ ^ ^1 {Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,Tags:["this","b3magmaCross","b3magmaR","wnkm.owned","wnkm.round"],equipment:{head:{count:1,id:"minecraft:magma_block"}}}
#execute unless score @s dummy matches 16.. rotated ~22.5 0 run function wancomatter:boss/dusk/skill4/loop-f
execute unless score @s dummy matches 10.. rotated ~36 0 run function wancomatter:boss/dusk/skill4/loop-f
