scoreboard players add @s counter 1
execute if score @s counter matches 3 run particle minecraft:block diamond_block ~ ~-0.2 ~ 0.5 0.5 0.5 1 40 force @a
execute if score @s counter matches 3 run particle minecraft:poof ~ ~-0.2 ~ 0.3 0 0.3 0.03 5 force @a
execute if score @s counter matches 3 run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 1
execute if score @s counter matches 3 run playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 1 1
execute if score @s counter matches 3 run function wancomatter:boss/sils/axe/slime1
execute if score @s counter matches 3.. run kill @s
