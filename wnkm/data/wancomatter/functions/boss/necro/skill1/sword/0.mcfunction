scoreboard players remove @s Cooldown2 1
scoreboard players set @s Cooldown3 1
execute unless score #difficult counter matches 4 run scoreboard players set @s counter 50
execute if score #difficult counter matches 4 run scoreboard players set @s counter 20

execute positioned ^ ^ ^3 run tag @a[sort=nearest,limit=1,scores={maxHP=1..}] add target
execute facing entity @a[tag=target,limit=1] feet run tp @s ~ ~ ~ ~ 0
tag @a[tag=target] remove target
execute store result score @s Cooldown4 run data get entity @s Rotation[0] 10
effect give @s slowness 1 6 true

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5
execute at @s run function wancomatter:boss/necro/skill1/sword/0-particle
