execute unless score #difficult counter matches 4 run particle minecraft:falling_dust ice ~ ~1 ~ 4 0 4 1 20 normal @a
execute unless score #difficult counter matches 4 run particle minecraft:falling_dust ice ~ ~1 ~ 4 0 4 1 5 force @a
execute if score #difficult counter matches 4 run particle minecraft:falling_dust ice ~ ~1 ~ 6 0 6 1 35 normal @a
execute if score #difficult counter matches 4 run particle minecraft:falling_dust ice ~ ~1 ~ 6 0 6 1 7 force @a

execute if score #difficult counter matches 2 run effect give @a[distance=..6.5,scores={maxHP=1..}] slowness 5 3
execute if score #difficult counter matches 3 run effect give @a[distance=..6.5,scores={maxHP=1..}] slowness 6 4
execute if score #difficult counter matches 4 run effect give @a[distance=..9.5,scores={maxHP=1..}] slowness 10 6

scoreboard players add @s subcounter 1
execute if score @s subcounter matches 15.. run function wancomatter:boss/bear/child/skill8/dmg
