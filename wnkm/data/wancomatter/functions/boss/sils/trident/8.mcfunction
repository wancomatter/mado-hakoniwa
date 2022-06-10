tp @s ^ ^ ^2
execute at @s run summon minecraft:trident ~ ~ ~ {Tags:["this","silsTrident","sils_babylone"],life:1200s,NoGravity:1b,Glowing:1b}
execute at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute at @s run particle minecraft:dust 0.1 0.1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
execute at @s run particle minecraft:dust 0.1 0.1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 40 normal @a
execute if entity @s[tag=sils_sound] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 5 2
scoreboard players operation @e[tag=this,limit=1] counter += @s subcounter2
tag @e[tag=this] remove this
scoreboard players add @s subcounter 1
scoreboard players set @s counter 0