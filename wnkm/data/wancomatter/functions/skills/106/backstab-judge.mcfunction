execute store result score #106backstab subcounter run data get entity @s Rotation[0] 10
execute store result score #106backstab subcounter2 run data get entity @e[tag=hurt,limit=1] Rotation[0] 10
execute if score #106backstab subcounter matches 1.. run scoreboard players remove #106backstab subcounter 3600
execute if score #106backstab subcounter2 matches 1.. run scoreboard players remove #106backstab subcounter2 3600
execute if score #106backstab subcounter matches ..-3000 if score #106backstab subcounter2 matches -600.. run scoreboard players add #106backstab subcounter 3600
execute if score #106backstab subcounter2 matches ..-3000 if score #106backstab subcounter matches -600.. run scoreboard players add #106backstab subcounter2 3600
execute run scoreboard players operation #106backstab subcounter -= #106backstab subcounter2
#tellraw @a {"score":{"name":"#106backstab","objective":"subcounter"}}
execute if score #106backstab subcounter matches -450..450 run function wancomatter:skills/106/backstab
scoreboard players reset #106backstab