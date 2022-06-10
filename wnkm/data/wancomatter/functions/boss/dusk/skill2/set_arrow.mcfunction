tp @s ^ ^ ^2
execute at @s run summon minecraft:arrow ~ ~ ~ {Tags:["this","b3fireArrow"],NoGravity:1b,life:1200,damage:5.0d,Fire:32767s,Color:-1}
execute at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute at @s run particle minecraft:dust 1 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 0 20 force @a
execute at @s run particle minecraft:dust 1 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 0 80 normal @a
execute if entity @s[tag=b3s2sound] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 4 2
execute if score #difficult counter matches 2 run data modify entity @e[tag=this,limit=1] damage set value 6.0d
execute if score #difficult counter matches 3 run data modify entity @e[tag=this,limit=1] damage set value 7.0d
execute if score #difficult counter matches 4 run data modify entity @e[tag=this,limit=1] damage set value 8.0d
scoreboard players operation @e[tag=this,limit=1] counter += @s subcounter2
execute unless score #difficult counter matches 2..4 run scoreboard players remove @e[tag=this] counter 10
execute if score #difficult counter matches 2 run scoreboard players remove @e[tag=this] counter 5
tag @e[tag=this] remove this
scoreboard players add @s subcounter 1
scoreboard players set @s counter 0