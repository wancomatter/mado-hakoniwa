#スコア増加
scoreboard players add @s counter 1
#演出
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 2
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:explosion ^ ^ ^1.33 0 0 0 0 1 normal @a
particle minecraft:explosion ^ ^ ^2.66 0 0 0 0 1 normal @a

#視線判定法を用いたターゲット指定
tag @s add 064dummy
execute positioned ~-1.0 ~-1.0 ~-1.0 if entity @e[dx=1.0,dy=1.0,dz=1.0,scores={maxHP=1..},limit=1] as @e[dx=1.0,dy=1.0,dz=1.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=064dummy,limit=1] teamNumber run tag @s add hit
execute positioned ^ ^ ^1.00 positioned ~-1.0 ~-1.0 ~-1.0 if entity @e[dx=1.0,dy=1.0,dz=1.0,scores={maxHP=1..},limit=1] as @e[dx=1.0,dy=1.0,dz=1.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=064dummy,limit=1] teamNumber run tag @s add hit
execute positioned ^ ^ ^2.00 positioned ~-1.0 ~-1.0 ~-1.0 if entity @e[dx=1.0,dy=1.0,dz=1.0,scores={maxHP=1..},limit=1] as @e[dx=1.0,dy=1.0,dz=1.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=064dummy,limit=1] teamNumber run tag @s add hit
execute positioned ^ ^ ^3.00 positioned ~-1.0 ~-1.0 ~-1.0 if entity @e[dx=1.0,dy=1.0,dz=1.0,scores={maxHP=1..},limit=1] as @e[dx=1.0,dy=1.0,dz=1.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=064dummy,limit=1] teamNumber run tag @s add hit

#ダメージ処理等
execute if entity @e[tag=hit,limit=1] as @a[tag=anti_aircraft_using] if score @s playerNumber = @e[tag=064dummy,limit=1,sort=nearest] playerNumber run tag @s add user
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/064/hit

#ブロック判定でスコア増加
execute unless block ^ ^ ^0.4 #wancomatter:air run scoreboard players set @s counter 20
execute if score @s subcounter matches 6.. unless block ^ ^ ^1.2 #wancomatter:air run scoreboard players set @s counter 20
execute if score @s subcounter matches 10.. unless block ^ ^ ^2.0 #wancomatter:air run scoreboard players set @s counter 20
execute if score @s subcounter matches 14.. unless block ^ ^ ^2.8 #wancomatter:air run scoreboard players set @s counter 20
execute if score @s subcounter matches 18.. unless block ^ ^ ^3.6 #wancomatter:air run scoreboard players set @s counter 20

#前方tp
tp @s ^ ^ ^4.0
#後処理
execute if score @s counter matches 16.. unless entity @a[tag=user,limit=1] as @a[tag=anti_aircraft_using] if score @s playerNumber = @e[tag=064dummy,limit=1,sort=nearest] playerNumber run tag @s add user
execute if score @s counter matches 16.. run tag @a[tag=user] remove anti_aircraft_using
execute if entity @a[tag=user,limit=1] run tag @a[tag=user] remove user
tag @s remove 064dummy
execute if score @s counter matches 16.. run kill @s
