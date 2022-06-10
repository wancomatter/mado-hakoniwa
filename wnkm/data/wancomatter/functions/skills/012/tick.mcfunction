scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add hide-player
execute as @a[tag=hide-player] at @s as @e[distance=..20,scores={maxHP=1..},tag=!noMob,team=!z_spectate] at @s unless score @s teamNumber = #dummy teamNumber run function wancomatter:skills/012/judge-look-b
execute if entity @a[tag=hide-looked] run scoreboard players add @s subcounter 2
execute if entity @a[tag=hide-looked] as @a[tag=hide-looked] at @s run playsound minecraft:entity.creeper.death master @s ~ ~ ~ 1.2 2
execute if entity @a[tag=hide-looked] run tag @a[tag=hide-looked] remove hide-looked
execute if score @s subcounter matches 1.. run scoreboard players remove @s subcounter 1
scoreboard players reset #dummy
execute as @a[tag=hide-player] if entity @s[tag=magic_used] run tag @s add hide-focused
execute as @a[tag=hide-player] if entity @s[tag=damagetrade] run tag @s add hide-focused
execute as @a[tag=hide-player] if score @s sneak matches 1.. run effect give @s minecraft:invisibility 1 0 true
execute as @a[tag=hide-player] if score @s sneak matches 1.. run effect give @s minecraft:speed 1 9 true
execute as @a[tag=hide-player] unless score @s sneak matches 1.. run effect give @s minecraft:invisibility 1 0 false
execute as @a[tag=hide-player] unless score @s sneak matches 1.. run effect clear @s minecraft:speed
execute if score @s subcounter matches 15.. as @a[tag=hide-player] run tag @s add hide-focused
tag @a[tag=hide-player] remove hide-player
execute if entity @a[tag=hide-focused] run function wancomatter:skills/012/dispell
execute if score @s counter matches 9600.. run kill @s
