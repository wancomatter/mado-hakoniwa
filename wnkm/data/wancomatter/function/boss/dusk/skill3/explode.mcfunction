effect give @e[tag=dusk] minecraft:luck 1 9 true
summon marker ^ ^ ^1.875 {Tags:["pos","pos2","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^1.5 {Tags:["pos","pos2","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^1.125 {Tags:["pos","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^0.75 {Tags:["pos","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^0.375 {Tags:["pos","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^0 {Tags:["pos","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^-0.375 {Tags:["pos","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^-0.75 {Tags:["pos","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^-1.125 {Tags:["pos","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^-1.5 {Tags:["pos","wnkm.owned","wnkm.round"]}
summon marker ^ ^ ^-1.875 {Tags:["pos","pos2","wnkm.owned","wnkm.round"]}
execute unless score #difficult counter matches 4 at @e[tag=hit,limit=1,sort=nearest] positioned as @e[tag=pos,limit=1,sort=nearest] as @e[tag=pos2] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,Invulnerable:1b,Tags:["b3ignisStrike_creeper","wnkm.owned","wnkm.round"],powered:0b,CustomName:"イグニスストライク"}
execute if score #difficult counter matches 4 at @e[tag=hit,limit=1,sort=nearest] positioned as @e[tag=pos,limit=1,sort=nearest] as @e[tag=pos2] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0,Invulnerable:1b,Tags:["b3ignisStrike_creeper","wnkm.owned","wnkm.round"],powered:0b,CustomName:"イグニスストライク"}
kill @e[tag=pos]
scoreboard players set @e[tag=this,limit=1] counter 34
effect give @e[tag=hit] levitation 1 9 true
scoreboard players set @e[tag=hit] levitateOperate 5
execute if entity @a[tag=!hit,gamemode=!spectator,distance=3..10,limit=1,sort=nearest] run function wancomatter:boss/dusk/skill3/first
tag @e[tag=hit] remove hit
tag @s add b3s3reset
