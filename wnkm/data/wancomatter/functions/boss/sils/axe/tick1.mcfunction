scoreboard players add @s counter 1
execute if score @s counter matches 3 run particle minecraft:block diamond_block ~ ~ ~ 0.5 0.5 0.5 1 300 force @a
execute if score @s counter matches 3 run particle minecraft:crit ~ ~ ~ 0 0 0 1 30 force
execute if score @s counter matches 3 run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.5
execute if score @s counter matches 3 run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.9
execute if score @s counter matches 3 run function wancomatter:boss/sils/axe/slime2
execute if score @s counter matches 3.. run kill @s
