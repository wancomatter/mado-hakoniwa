scoreboard players add @s counter 1
execute if score @s counter matches 2 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 0.50
execute if score @s counter matches 3 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 0.57
execute if score @s counter matches 4 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 0.64
execute if score @s counter matches 5 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 0.71
execute if score @s counter matches 6 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 0.78
execute if score @s counter matches 7 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 0.85
execute if score @s counter matches 8 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 0.92
execute if score @s counter matches 9 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 0.99
execute if score @s counter matches 10 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.06
execute if score @s counter matches 11 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.13
execute if score @s counter matches 12 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.20
execute if score @s counter matches 13 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.27
execute if score @s counter matches 14 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.34
execute if score @s counter matches 15 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.41
execute if score @s counter matches 16 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.48
execute if score @s counter matches 17 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.55
execute if score @s counter matches 18 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.62
execute if score @s counter matches 19 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.69
execute if score @s counter matches 20 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.76
execute if score @s counter matches 21 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.83
execute if score @s counter matches 22 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.90
execute if score @s counter matches 23 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 1.97
execute if score @s counter matches 24 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2.5 2.00
execute if score @s counter matches ..24 run function wancomatter:skills/010/tick1
execute if score @s counter matches 25 run function wancomatter:skills/010/explode
execute if score @s counter matches 24..28 run function wancomatter:skills/010/explode_loop
execute if score @s counter matches 45 run function wancomatter:skills/010/end
