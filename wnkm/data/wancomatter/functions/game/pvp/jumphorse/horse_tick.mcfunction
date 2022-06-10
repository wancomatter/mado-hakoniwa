scoreboard players add @s counter 1
execute if score @s counter matches 15 if entity @s[tag=jumphorse_merry] run function wancomatter:game/pvp/jumphorse/jump3
execute if score @s counter matches 20 run data merge entity @s {ActiveEffects:[{Id:28b,Amplifier:0b,Duration:2,ShowParticles:0b}]}
execute if score @s counter matches 20 run scoreboard players set @s counter 15
execute if data entity @s {OnGround:1b} run kill @s