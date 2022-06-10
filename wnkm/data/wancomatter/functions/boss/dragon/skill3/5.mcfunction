execute unless score @s pageChange matches 800.. unless score @s pageChange matches ..-800 run function wancomatter:boss/dragon/skill3/5end
execute if score @s pageChange matches 800.. at @s run tp @s ~ ~ ~ ~8.00 ~
execute if score @s pageChange matches 800.. run scoreboard players remove @s pageChange 800
execute if score @s pageChange matches ..-800 at @s run tp @s ~ ~ ~ ~-8.00 ~
execute if score @s pageChange matches ..-800 run scoreboard players add @s pageChange 800
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 10 0.5