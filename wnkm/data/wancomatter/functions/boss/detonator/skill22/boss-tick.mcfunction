tp @s 0 18 0
scoreboard players add @s Cooldown3_max 1
scoreboard players add @s Cooldown6_max 1
execute if score @s Cooldown3_max matches 2 run gamerule mobGriefing false
execute if score @s Cooldown3_max matches 32 run gamerule mobGriefing false
execute if score @s Cooldown3_max matches 58 run playsound minecraft:block.end_portal.spawn master @a 0 -100 0 0 0.5 1
execute unless score @s Cooldown3_max matches 60.. as @e[tag=b1s22stand] at @s run tp @s ~ ~ ~ ~2 0
execute if score @s Cooldown3_max matches 60..120 as @e[tag=b1s22stand] at @s run tp @s ~ ~ ~ ~6 0
execute unless score @s Cooldown3_max matches 121.. as @e[tag=b1s22stand] at @s run function wancomatter:boss/detonator/skill22/particle
execute if score @s Cooldown3_max matches 140 run playsound minecraft:entity.wither.shoot master @a 0 -30 0 0 0.5 1
execute if score @s Cooldown6_max matches 60.. if score @s Cooldown3_max matches 150.. run function wancomatter:boss/detonator/skill22/random
execute if score @s Cooldown6_max matches 50 at @e[tag=b1s22stand] run summon lightning_bolt ~ ~-0.4 ~
execute if score @s Cooldown6_max matches 60.. at @e[tag=b1s22stand] run summon lightning_bolt ~ ~-0.4 ~
execute if score @s Cooldown6_max matches 60.. run scoreboard players set @s Cooldown6_max 50
#execute if score @s Cooldown3_max matches 64 rotated 0 0 run function wancomatter:boss/detonator/skill22/around
execute if score @s Cooldown3_max matches 64 rotated 0 0 positioned ~ 9.5 ~ run function wancomatter:boss/detonator/skill22/around
execute if score @s Cooldown3_max matches 230 unless score #difficult counter matches 2..4 run time set 6000
execute if score @s Cooldown3_max matches 230 unless score #difficult counter matches 2..4 run tag @s remove b1s22
execute if score @s Cooldown3_max matches 230 unless score #difficult counter matches 2..4 run kill @e[tag=b1s22stand]
execute if score @s Cooldown3_max matches 230 unless score #difficult counter matches 2..4 run scoreboard players reset @s Cooldown6_max
execute if score @s Cooldown3_max matches 230 unless score #difficult counter matches 2..4 run scoreboard players reset @s Cooldown3_max
execute if score @s Cooldown3_max matches 270 if score #difficult counter matches 2 run time set 6000
execute if score @s Cooldown3_max matches 270 if score #difficult counter matches 2 run tag @s remove b1s22
execute if score @s Cooldown3_max matches 270 if score #difficult counter matches 2 run kill @e[tag=b1s22stand]
execute if score @s Cooldown3_max matches 270 if score #difficult counter matches 2 run scoreboard players reset @s Cooldown6_max
execute if score @s Cooldown3_max matches 270 if score #difficult counter matches 2 run scoreboard players reset @s Cooldown3_max
execute if score @s Cooldown3_max matches 330 if score #difficult counter matches 3 run time set 6000
execute if score @s Cooldown3_max matches 330 if score #difficult counter matches 3 run tag @s remove b1s22
execute if score @s Cooldown3_max matches 330 if score #difficult counter matches 3 run kill @e[tag=b1s22stand]
execute if score @s Cooldown3_max matches 330 if score #difficult counter matches 3 run scoreboard players reset @s Cooldown6_max
execute if score @s Cooldown3_max matches 330 if score #difficult counter matches 3 run scoreboard players reset @s Cooldown3_max
execute if score @s Cooldown3_max matches 430.. run time set 6000
execute if score @s Cooldown3_max matches 430.. run tag @s remove b1s22
execute if score @s Cooldown3_max matches 430.. run kill @e[tag=b1s22stand]
execute if score @s Cooldown3_max matches 430.. run scoreboard players reset @s Cooldown6_max
execute if score @s Cooldown3_max matches 430.. run scoreboard players reset @s Cooldown3_max