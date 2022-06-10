scoreboard players set @s Cooldown6 120
tag @s add usedskill
execute store result score @s Cooldown3_max run data get entity @s Pos[1] 100
execute positioned ^ ^ ^6 as @a[sort=nearest,distance=..32,gamemode=!spectator] run tag @s add b1s6target
execute if entity @a[tag=b1s6target] run tag @s add b1s6
execute if entity @a[tag=b1s6target] if score #difficult counter matches 3 run scoreboard players set @s Cooldown6_max -20
execute if entity @a[tag=b1s6target] if score #difficult counter matches 4 run scoreboard players set @s Cooldown6_max -40