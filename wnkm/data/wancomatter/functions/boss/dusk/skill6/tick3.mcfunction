particle minecraft:flame ~ ~0.2 ~ 1 0.2 1 0.03 2 normal @a
particle minecraft:flame ~ ~0.2 ~ 1 0.2 1 0.03 2 force @a

scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..1.8,scores={maxHP=1..}] unless entity @s[type=player,gamemode=spectator] if data entity @s {HurtTime:0s} unless score @s teamNumber = #dummy teamNumber run function wancomatter:boss/dusk/skill6/dmg
execute as @e[distance=..1.8,scores={maxHP=1..}] unless entity @s[type=player,gamemode=spectator] if data entity @s {HurtTime:1s} unless score @s teamNumber = #dummy teamNumber run function wancomatter:boss/dusk/skill6/dmg
scoreboard players reset #dummy teamNumber

execute if score @s counter matches 300.. run kill @s