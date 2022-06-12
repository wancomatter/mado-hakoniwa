execute facing entity @s feet as @e[tag=me,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=me,limit=1] store result score #- Cooldown3 run data get entity @s Rotation[0] 100
scoreboard players operation #- Cooldown4 = #- Cooldown2
scoreboard players add #- Cooldown4 4500
scoreboard players operation #- Cooldown5 = #- Cooldown2
scoreboard players remove #- Cooldown5 4500
execute if score #- Cooldown3 matches 9000.. if score #- Cooldown4 matches ..-9000 run scoreboard players add #- Cooldown4 36000
execute if score #- Cooldown3 matches 9000.. if score #- Cooldown5 matches ..-9000 run scoreboard players add #- Cooldown5 36000
execute if score #- Cooldown3 matches ..-9000 if score #- Cooldown4 matches 9000.. run scoreboard players remove #- Cooldown4 36000
execute if score #- Cooldown3 matches ..-9000 if score #- Cooldown5 matches 9000.. run scoreboard players remove #- Cooldown5 36000

execute if score #- Cooldown3 <= #- Cooldown4 if score #- Cooldown3 >= #- Cooldown5 positioned as @s run function wancomatter:skills/023/hit
tag @s remove hit
