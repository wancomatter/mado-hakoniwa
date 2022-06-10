#execute at @e[tag=b1s22stand] run summon armor_stand ~ ~ ~ {Tags:["b1s22blast","this"],Marker:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["b1s22blast","this"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned as @e[tag=this] rotated ~ 0 run tp @e[tag=this,distance=..1,sort=nearest] ~ ~ ~ ~ ~
tag @e[tag=this] remove this
scoreboard players add #dummy dummy 1
execute unless score #difficult counter matches 2..4 if score #dummy dummy matches 1..11 rotated ~30 0 run function wancomatter:boss/detonator/skill22/around
execute if score #difficult counter matches 2 if score #dummy dummy matches 1..17 rotated ~20 0 run function wancomatter:boss/detonator/skill22/around
execute if score #difficult counter matches 3 if score #dummy dummy matches 1..20 rotated ~18 0 run function wancomatter:boss/detonator/skill22/around
execute if score #difficult counter matches 4 if score #dummy dummy matches 1..23 rotated ~15 0 run function wancomatter:boss/detonator/skill22/around