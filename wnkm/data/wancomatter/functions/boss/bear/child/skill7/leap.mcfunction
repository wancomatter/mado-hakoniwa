execute at @e[tag=bear_c] run playsound entity.ender_dragon.ambient master @a ~ ~ ~ 4 2
execute at @e[tag=bear_c] run particle cloud ~ ~ ~ 0.2 0.2 0.2 1 300 normal @a
execute at @e[tag=bear_c] run particle cloud ~ ~ ~ 0.2 0.2 0.2 1 75 force @a
scoreboard players set @e[tag=bear_c] Cooldown2 0

tag @e[tag=bear_c] add bear_s7