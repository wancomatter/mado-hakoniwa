effect give @e[tag=dusk] minecraft:luck 1 9 true
summon marker ^ ^ ^1.875 {Tags:["pos","pos2"]}
summon marker ^ ^ ^1.5 {Tags:["pos","pos2"]}
summon marker ^ ^ ^1.125 {Tags:["pos"]}
summon marker ^ ^ ^0.75 {Tags:["pos"]}
summon marker ^ ^ ^0.375 {Tags:["pos"]}
summon marker ^ ^ ^0 {Tags:["pos"]}
summon marker ^ ^ ^-0.375 {Tags:["pos"]}
summon marker ^ ^ ^-0.75 {Tags:["pos"]}
summon marker ^ ^ ^-1.125 {Tags:["pos"]}
summon marker ^ ^ ^-1.5 {Tags:["pos"]}
summon marker ^ ^ ^-1.875 {Tags:["pos","pos2"]}
execute unless score #difficult counter matches 4 at @e[tag=hit,limit=1,sort=nearest] positioned as @e[tag=pos,limit=1,sort=nearest] as @e[tag=pos2] run summon minecraft:creeper ~ ~ ~ {CustomName:'"イグニスストライク"',Invulnerable:1b,powered:0b,ExplosionRadius:2b,Fuse:0,Tags:["b3ignisStrike_creeper"]}
execute if score #difficult counter matches 4 at @e[tag=hit,limit=1,sort=nearest] positioned as @e[tag=pos,limit=1,sort=nearest] as @e[tag=pos2] run summon minecraft:creeper ~ ~ ~ {CustomName:'"イグニスストライク"',Invulnerable:1b,powered:0b,ExplosionRadius:3b,Fuse:0,Tags:["b3ignisStrike_creeper"]}
kill @e[tag=pos]
scoreboard players set @e[tag=this,limit=1] counter 34
effect give @e[tag=hit] levitation 1 9 true
scoreboard players set @e[tag=hit] levitateOperate 5
execute if entity @a[tag=!hit,gamemode=!spectator,distance=3..10,limit=1,sort=nearest] run function wancomatter:boss/dusk/skill3/first
tag @e[tag=hit] remove hit
tag @s add b3s3reset