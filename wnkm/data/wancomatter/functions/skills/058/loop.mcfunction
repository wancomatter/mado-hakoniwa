scoreboard players add #dummy dummy 1
execute positioned ~ ~300 ~ run summon wither_skeleton ^ ^ ^4 {Tags:["projectile_wall","wall_entity","first","noMob"],Team:"noPush",Invulnerable:1b,NoAI:1b,Silent:1b,DeathTime:19s,ActiveEffects:[{Id:14,Amplifier:127b,Duration:2147483647,ShowParticles:0b}]}
execute positioned ~ ~300 ~ positioned ^ ^ ^4 as @e[tag=first,limit=1,sort=nearest,distance=..1] run tp @s ~ ~-300 ~
execute unless score #dummy dummy matches 36.. rotated ~10 0 run function wancomatter:skills/058/loop