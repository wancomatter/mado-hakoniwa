scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 1..9 run scoreboard players operation #dummy counter = @s counter
execute if score @s counter matches 10..15 run scoreboard players set #dummy counter 10
execute if score @s counter matches 20 run scoreboard players set #dummy counter 30
execute if score @s counter matches 1..20 as @a if score @s playerNumber = #dummy playerNumber run tag @s add now-kusaSlash
execute if score @s counter matches 1..20 run tp @a[tag=now-kusaSlash] ~ ~ ~ ~ ~
execute if score @s counter matches 1..20 as @a[tag=now-kusaSlash] run tp @s @s
execute if score @s counter matches 1..14 as @a[tag=now-kusaSlash] at @s positioned ~ ~1.3 ~ run function wancomatter:skills/107/slash/line
execute if score @s counter matches 15 as @a[tag=now-kusaSlash] at @s positioned ~ ~1.3 ~ run function wancomatter:skills/107/slash/line-sweep
execute if score @s counter matches 20 run tag @s add now-kusaSlashStand
execute if score @s counter matches 20 run scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score @s counter matches 20 run tp @s ~ ~1.3 ~
execute if score @s counter matches 20 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.8 0.5
execute if score @s counter matches 20 at @s run function wancomatter:skills/107/slash/line-explode
execute if score @s counter matches 20 if entity @e[tag=kusaSlash-hit,limit=1] run function wancomatter:skills/107/slash/hit-entity


scoreboard players reset #dummy
tag @a[tag=now-kusaSlash] remove now-kusaSlash
execute if score @s counter matches 20.. run kill @s