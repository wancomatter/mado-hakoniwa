execute unless score #difficult counter matches 2..4 if entity @a[scores={maxHP=1..},distance=..8.0,limit=1,sort=nearest] run function wancomatter:boss/necro/phase2/tp3
execute if score #difficult counter matches 2 if entity @a[scores={maxHP=1..},distance=..10.0,limit=1,sort=nearest] run function wancomatter:boss/necro/phase2/tp3
execute if score #difficult counter matches 3 if entity @a[scores={maxHP=1..},distance=..12.5,limit=1,sort=nearest] run function wancomatter:boss/necro/phase2/tp3
execute if score #difficult counter matches 4 if entity @a[scores={maxHP=1..},distance=..16.0,limit=1,sort=nearest] run function wancomatter:boss/necro/phase2/tp3

execute unless score #difficult counter matches 2..4 run scoreboard players set @s subcounter 80
execute if score #difficult counter matches 2 run scoreboard players set @s subcounter 60
execute if score #difficult counter matches 3 run scoreboard players set @s subcounter 40
execute if score #difficult counter matches 4 run scoreboard players set @s subcounter 20
