execute if data entity @s {OnGround:1b} run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.8 2
execute if data entity @s {OnGround:1b} run particle minecraft:smoke ~ ~0.3 ~ 0 0 0 0.03 5 force @a
execute if data entity @s {OnGround:1b} run scoreboard players add @s counter 1
execute if score @s counter matches 10.. run function wancomatter:skills/082/explode
