execute as @e[tag=first] run data remove entity @s CustomPotionEffects[{Id:9,Amplifier:0b,Duration:-132,ShowParticles:0b,ShowIcon:0b}]
execute as @e[tag=first] store result score @s subcounter run data get entity @s damage 130
execute as @e[tag=first] store result entity @s damage double 0.005 run scoreboard players get @s subcounter
execute at @e[tag=first] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
execute as @e[tag=first] run data merge entity @s {crit:1b}
execute as @e[tag=first] run tag @s add ballista
execute as @e[tag=first] store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 2000
execute as @e[tag=first] store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 2000
execute as @e[tag=first] store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 2000
scoreboard players set #dummy dummy -1000
scoreboard players set #dummy subcounter2 30
scoreboard players set #- counter 2
function wancomatter:skills/recoil
tag @s add has_charged_ballista
