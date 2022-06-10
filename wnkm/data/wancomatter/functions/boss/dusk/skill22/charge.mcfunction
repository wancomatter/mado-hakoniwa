scoreboard players set @s dummy 0
scoreboard players remove @s Cooldown2_max 1600
execute as @e[tag=b3s22charge] at @s positioned ~ ~0.6 ~ facing 0 7.0 0 run function wancomatter:boss/dusk/skill22/line
scoreboard players add @s Cooldown3_max 1

execute if score @s Cooldown3_max matches 4 run tellraw @a ["",{"text":"<終焉の炎霊 ダスク> ","color":"red"},{"text":"我は終焉を司りし煉獄の使徒。"}]
execute if score @s Cooldown3_max matches 8 run tellraw @a ["",{"text":"<終焉の炎霊 ダスク> ","color":"red"},{"text":"我が求むは栄光の破滅･･････全てのものは等しく滅ぶ。"}]
execute if score @s Cooldown3_max matches 12 run tellraw @a ["",{"text":"<終焉の炎霊 ダスク> ","color":"red"},{"text":"炎天の使徒を顕現し、新たな浄土を爆誕せん･･････"}]
execute if score @s Cooldown3_max matches 4 positioned 0 7 0 run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 6 0.97
execute if score @s Cooldown3_max matches 8 positioned 0 7 0 run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 6 1.03
execute if score @s Cooldown3_max matches 12 positioned 0 7 0 run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 6 1.15
execute if score @s Cooldown3_max matches 4 positioned 0 7 0 run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 400 force @a
execute if score @s Cooldown3_max matches 8 positioned 0 7 0 run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.5 600 force @a
execute if score @s Cooldown3_max matches 12 positioned 0 7 0 run particle minecraft:end_rod ~ ~ ~ 0 0 0 2 800 force @a
execute if score @s Cooldown3_max matches 4 positioned 0 7 0 run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 800 normal @a
execute if score @s Cooldown3_max matches 8 positioned 0 7 0 run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.5 1200 normal @a
execute if score @s Cooldown3_max matches 12 positioned 0 7 0 run particle minecraft:end_rod ~ ~ ~ 0 0 0 2 1600 normal @a
