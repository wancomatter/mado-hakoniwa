scoreboard players set @s Cooldown1 170
tag @s add usedskill
data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0d
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt","b1s1-sound"],data:{rotate:0}}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:72}}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:144}}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:216}}
summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:288}}
execute if score @s HP matches ..8000 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:36}}
execute if score @s HP matches ..8000 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:108}}
execute if score @s HP matches ..8000 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:180}}
execute if score @s HP matches ..8000 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:252}}
execute if score @s HP matches ..8000 run summon minecraft:marker ~ ~ ~ {Tags:["discharge","b1stormbolt"],data:{rotate:324}}
execute as @e[tag=discharge] store result score @s subcounter run data get entity @s UUID[1] 1
execute as @e[tag=discharge] if score @s subcounter matches 0.. run scoreboard players add @s subcounter 64
execute as @e[tag=discharge] if score @s subcounter matches ..-1 run scoreboard players remove @s subcounter 63
execute as @e[tag=discharge] store result score @s subcounter2 run data get entity @s data.rotate 1
execute as @e[tag=discharge] run scoreboard players set @s counter 50
execute if score @s HP <= @s Mana as @e[tag=discharge] run scoreboard players set @s counter 60
execute if score @s HP <= @s maxMana as @e[tag=discharge] run scoreboard players set @s counter 70
execute unless score #difficult counter matches 2..4 run scoreboard players remove @e[tag=discharge] counter 20
execute if score #difficult counter matches 2 run scoreboard players remove @e[tag=discharge] counter 5
execute if score #difficult counter matches 4 run scoreboard players add @e[tag=discharge] counter 5
tag @e[tag=discharge] remove discharge