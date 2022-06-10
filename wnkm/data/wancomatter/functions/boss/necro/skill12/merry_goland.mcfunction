tag @s remove necro_s12entity
team join Gray @s
data merge entity @s {Glowing:1b}
execute facing entity @a[limit=1,sort=nearest,gamemode=!spectator] feet run tp @s ~ ~ ~ ~ ~
execute store result score @s Cooldown3 run data get entity @s Rotation[0] 10000
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4.5 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a


tag @s add 117_2rush

