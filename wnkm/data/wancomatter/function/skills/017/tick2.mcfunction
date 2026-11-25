particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0 3 normal @a
particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0 1 force @a
execute if entity @s[tag=Braze-sound] run playsound minecraft:block.campfire.crackle master @a ^ ^ ^10 2 1

scoreboard players add @s counter 1
execute if score @s counter matches 10 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.3 0.5
execute if score @s counter matches 10 run function wancomatter:skills/017/launch_first
execute if score @s counter matches 20.. run function wancomatter:skills/017/launch_second
