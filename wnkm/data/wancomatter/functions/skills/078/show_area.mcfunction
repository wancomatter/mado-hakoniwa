execute positioned ~ ~-2.0 ~ run function wancomatter:skills/078/show_area_loop
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 3 0.7
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 0.7
execute if score @s counter matches 45 store result score @s Cooldown1 run data get entity @s Pos[0] 1000
execute if score @s counter matches 45 store result score @s Cooldown2 run data get entity @s Pos[2] 1000