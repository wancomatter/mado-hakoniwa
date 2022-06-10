#倍率増加
scoreboard players add @e[tag=combo_power_now,limit=1] counter 1
execute if score @e[tag=combo_power_now,limit=1] counter matches 4..6 at @s run playsound minecraft:entity.generic.explode master @a ~ ~1 ~ 0.8 2
execute if score @e[tag=combo_power_now,limit=1] counter matches 7.. at @s run playsound minecraft:entity.generic.explode master @a ~ ~1 ~ 0.8 0.5
execute if score @e[tag=combo_power_now,limit=1] counter matches 4.. at @s run particle flame ~ ~1 ~ 0.4 0.4 0.4 0.4 100 force @a[distance=1..]
execute if score @e[tag=combo_power_now,limit=1] counter matches 7 at @s run particle explosion ~ ~1 ~ 0.1 0.1 0.1 1 3 force @a[distance=1..]
execute if score @e[tag=combo_power_now,limit=1] counter matches 4.. if entity @a[tag=hurtBy,scores={blessNo23=1},limit=1] run scoreboard players set @e[tag=combo_power_now,limit=1] counter 3
execute if score @e[tag=combo_power_now,limit=1] counter matches 7.. if entity @a[tag=hurtBy,scores={blessNo23=2..},limit=1] run scoreboard players set @e[tag=combo_power_now,limit=1] counter 6

#演出
execute at @a[tag=hurtBy,scores={blessNo23=1..},limit=1] run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.7 2
execute at @a[tag=hurtBy,scores={blessNo23=1..},limit=1] run particle minecraft:sweep_attack ~ ~1 ~ 0.7 0.7 0.7 1 40 normal @a[distance=1..]
execute at @a[tag=hurtBy,scores={blessNo23=1..},limit=1] run particle minecraft:sweep_attack ~ ~1 ~ 0.7 0.7 0.7 1 10 force @a
title @a[tag=hurtBy,scores={blessNo23=1..},limit=1] times 0 25 15
title @a[tag=hurtBy,scores={blessNo23=1..},limit=1] subtitle [{"score":{"name":"@e[tag=combo_power_now,limit=1]","objective":"counter"},"color":"green","italic":true,"underlined":true},{"text":" combo!!"},{"text":"                               ","underlined":false}]
title @a[tag=hurtBy,scores={blessNo23=1..},limit=1] title ""
