execute unless score #difficult counter matches 4 run function wancomatter:boss/necro/skill14/3_3
execute if score #difficult counter matches 4 run function wancomatter:boss/necro/skill14/3_4

execute if score @s counter matches 1 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 0.50
execute if score @s counter matches 2 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 0.60
execute if score @s counter matches 3 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 0.70
execute if score @s counter matches 4 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 0.80
execute if score @s counter matches 5 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 0.90
execute if score @s counter matches 6 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.00
execute if score @s counter matches 7 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.10
execute if score @s counter matches 8 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.20
execute if score @s counter matches 9 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.30
execute if score @s counter matches 10 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.40
execute if score @s counter matches 11 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.50
execute if score @s counter matches 12 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.60
execute if score @s counter matches 13 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.70
execute if score @s counter matches 14 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.80
execute if score @s counter matches 15 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 1.90
execute if score @s counter matches 16 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3.5 2.00

scoreboard players add @s counter 1
execute if score @s counter matches 17.. run function wancomatter:boss/necro/skill14/4

execute if score @s subcounter2 matches 1 unless score #difficult counter matches 4 run tp @s ~ ~ ~ ~-1.25 ~
execute if score @s subcounter2 matches 0 unless score #difficult counter matches 4 run tp @s ~ ~ ~ ~1.25 ~
execute if score @s subcounter2 matches 1 if score #difficult counter matches 4 run tp @s ~ ~ ~ ~-2.0 ~
execute if score @s subcounter2 matches 0 if score #difficult counter matches 4 run tp @s ~ ~ ~ ~2.0 ~
