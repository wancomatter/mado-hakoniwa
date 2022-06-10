execute at @e[tag=necro] facing entity @s feet run tp @e[tag=necro,limit=1,sort=nearest] ~ ~ ~ ~ ~

tag @s remove 117horse1
tag @s remove 117horse2
tag @s remove 117horse3
tag @s remove 117horse4
execute facing entity @a[limit=1,sort=nearest,gamemode=!spectator] feet run tp @s ~ ~ ~ ~ ~
execute store result score @s Cooldown3 run data get entity @s Rotation[0] 10000
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4.5 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a


tag @s add 117_2rush
tag @s remove 117ready
