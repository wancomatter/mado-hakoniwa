execute at @e[tag=now-extinguish] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.2 80 normal @a
execute at @e[tag=now-extinguish] run particle minecraft:smoke ~ ~1 ~ 2 2 2 0.01 40 normal @a
execute at @e[tag=now-extinguish] run particle minecraft:smoke ~ ~1 ~ 2 2 2 0.01 30 force @a
execute at @e[tag=now-extinguish] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 1
execute at @e[tag=now-extinguish] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 1
execute as @a[tag=now-extinguish] run function wancomatter:skills/002/extinguish_modify
tag @a[tag=now-extinguish] remove now-extinguish
scoreboard players reset #dummy
kill @s