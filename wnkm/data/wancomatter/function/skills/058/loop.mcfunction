scoreboard players add #dummy dummy 1
execute positioned ~ ~300 ~ run summon wither_skeleton ^ ^ ^4 {ActiveEffects:[{Amplifier:127b,Duration:2147483647,Id:14,ShowParticles:0b}],DeathTime:19s,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["projectile_wall","wall_entity","first","noMob","wnkm.owned","wnkm.round"],Team:"noPush",active_effects:[{amplifier:127b,duration:2147483647,id:"minecraft:invisibility",show_particles:0b}]}
execute positioned ~ ~300 ~ positioned ^ ^ ^4 as @e[tag=first,limit=1,sort=nearest,distance=..1] run tp @s ~ ~-300 ~
execute unless score #dummy dummy matches 36.. rotated ~10 0 run function wancomatter:skills/058/loop
