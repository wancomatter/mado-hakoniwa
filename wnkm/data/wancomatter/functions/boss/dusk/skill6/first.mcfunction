scoreboard players set @s Cooldown6 240
execute unless entity @s[tag=b3s21used] run scoreboard players set @s counter 20
execute unless entity @s[tag=b3s21used] run tag @s add usedskill
execute if entity @s[tag=b3s21used] unless score #difficult counter matches 3..4 run scoreboard players set @s counter 20
execute if entity @s[tag=b3s21used] unless score #difficult counter matches 3..4 run tag @s add usedskill
summon minecraft:marker ~ ~4 ~ {Tags:["this","b3volcanoSeed"]}
execute unless entity @e[tag=target] positioned ^ ^ ^5 at @a[scores={maxHP=1..},sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target"]}
execute as @e[tag=this] positioned as @s facing entity @e[tag=target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ -15
kill @e[tag=target]
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=this] subcounter 20
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=this] subcounter 24
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=this] subcounter 29
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=this] subcounter 34
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=this] counter 3
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=this] counter 8
tag @e[tag=this] remove this
particle minecraft:poof ~ ~ ~ 1 1 1 1 100 force @a
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 4 0.5
execute if entity @s[tag=b3s22used] unless score #difficult counter matches 3..4 unless score @s Cooldown2 matches 1.. run function wancomatter:boss/dusk/skill2/first