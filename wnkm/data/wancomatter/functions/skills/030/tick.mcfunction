scoreboard players operation #dummy playerNumber = @s ownerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if entity @s[tag=!bomb-invisible] as @a[distance=..15] if score #dummy playerNumber = @s playerNumber run tag @s add sm-bomb-owner
execute if entity @s[tag=!bomb-invisible] if score @s HP matches 180.. run particle minecraft:dust 0 1 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-bomb-owner]
execute if entity @s[tag=!bomb-invisible] if score @s HP matches 121..180 run particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-bomb-owner]
execute if entity @s[tag=!bomb-invisible] if score @s HP matches 61..120 run particle minecraft:dust 1 0.5 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-bomb-owner]
execute if entity @s[tag=!bomb-invisible] if score @s HP matches ..60 run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=sm-bomb-owner]

#透明化処理
execute if entity @s[tag=!bomb-invisible] if entity @a[tag=sm-bomb-owner,distance=..3,scores={Mana=6..,holdItem=30,sneak=1..}] run scoreboard players add @s subcounter 1
execute if entity @a[tag=sm-bomb-owner,distance=..3,scores={Mana=6..,sneak=1..}] at @s run particle minecraft:dust 0.1 0.1 0.1 0.7 ~ ~1 ~ 0.5 0.5 0.5 1 5 normal @a
execute if score @s subcounter matches 50.. as @a[tag=sm-bomb-owner,distance=..3,scores={Mana=6..},limit=1] run function wancomatter:skills/030/invisible

tag @a[tag=sm-bomb-owner] remove sm-bomb-owner
execute if entity @s[tag=bomb-invisible] if entity @e[distance=..1.5,scores={maxHP=1..}] as @e[distance=..1.5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run scoreboard players set #dummy dummy -30
execute if entity @s[tag=bomb-invisible] if data entity @s {HurtTime:9s} run scoreboard players set #dummy dummy -30
execute if score #dummy dummy matches -30 run effect clear @s
execute if score #dummy dummy matches -30 run data merge entity @s {Fuse:0s}

execute if score #dummy dummy matches -30 as @e[distance=..6.0,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber unless score @s playerNumber = #dummy playerNumber run function wancomatter:skills/arrow/06/instant_damage_shield
execute if score #dummy dummy matches -30 as @e[distance=..6.0,scores={maxHP=1..},tag=!explosion_instant_damage_shield] run tag @s add bomb-hit
execute if score #dummy dummy matches -30 run tag @e[tag=explosion_instant_damage_shield] remove explosion_instant_damage_shield
execute if score #dummy dummy matches -30 if entity @e[tag=bomb-hit,limit=1] run tag @s add bomb-command
execute if score #dummy dummy matches -30 if entity @e[tag=bomb-hit,limit=1] as @e[tag=bomb-hit] at @s run function wancomatter:skills/030/hit-entity
scoreboard players reset #dummy
