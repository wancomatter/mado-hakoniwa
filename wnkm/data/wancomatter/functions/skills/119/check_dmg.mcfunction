execute positioned ^ ^ ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute positioned ^ ^1.2 ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute positioned ^1.2 ^ ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute positioned ^ ^-1.2 ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute positioned ^-1.2 ^ ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute positioned ^0.9 ^0.9 ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute positioned ^0.9 ^-0.9 ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute positioned ^-0.9 ^0.9 ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute positioned ^-0.9 ^-0.9 ^ positioned ~-0.6 ~1.0 ~-0.6 as @e[dx=0.2,dy=0.2,dz=0.2,tag=!noHP] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run data merge storage wnkm_check_hit: {option:1b,including_myself:0b}
execute if entity @e[tag=hit,limit=1] run function pve:function/team
execute if entity @e[tag=hit,limit=1] run scoreboard players operation #work playerNumber = @s playerNumber
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function pve:job/003/skill/1/dmg
execute unless block ~ ~1.6 ~ #pve:air run scoreboard players set @s counter1 100
