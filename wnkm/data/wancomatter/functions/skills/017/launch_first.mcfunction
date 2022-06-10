scoreboard players add @s subcounter 1
particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a
execute unless block ^ ^ ^0.3 #wancomatter:air run scoreboard players set @s subcounter 1000
execute if entity @a[distance=..2,limit=1] run playsound minecraft:entity.blaze.shoot master @a[distance=..2] ~ ~ ~ 0.04 0.5
execute if score @s subcounter matches 77.. run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.3 0.5
execute unless score @s subcounter matches 77.. positioned ^ ^ ^0.3 run function wancomatter:skills/017/launch_first