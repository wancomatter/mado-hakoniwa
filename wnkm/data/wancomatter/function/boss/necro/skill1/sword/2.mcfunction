playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.6 0.5

effect clear @s slowness
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get @s Cooldown4
scoreboard players set @s Cooldown3 0
scoreboard players set @s dummy 15
execute rotated as @s rotated ~ 0 positioned ^ ^0.5 ^0.4 run function wancomatter:boss/necro/skill1/sword/2-loop
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function wancomatter:boss/necro/skill1/sword/hit
