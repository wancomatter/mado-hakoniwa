execute store result score #dummy subcounter run data get entity @s Rotation[0] 10
execute store result score #dummy subcounter2 run data get entity @e[tag=hurt,limit=1] Rotation[0] 10
execute if score #dummy subcounter matches 1.. run scoreboard players remove #dummy subcounter 3600
execute if score #dummy subcounter2 matches 1.. run scoreboard players remove #dummy subcounter2 3600
execute if score #dummy subcounter matches ..-3000 if score #dummy subcounter2 matches -600.. run scoreboard players add #dummy subcounter 3600
execute if score #dummy subcounter2 matches ..-3000 if score #dummy subcounter matches -600.. run scoreboard players add #dummy subcounter2 3600
execute run scoreboard players operation #dummy subcounter -= #dummy subcounter2
#tellraw @a {"score":{"name":"#dummy","objective":"subcounter"}}
execute if score #dummy subcounter matches -450..450 run function wancomatter:skills/106/backstab
scoreboard players reset @s dummy