tag @s add it
execute as @a if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @s add user
tag @s remove it
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 0.7
playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 3 2
execute at @a[tag=user] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.2 0.7
execute at @a[tag=user] run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 1.2 2

summon slime ~ ~ ~ {NoGravity:1b,Glowing:1b,Invulnerable:1b,Silent:1b,Size:0,Motion:[0d,0.75d,0d],Tags:["meteor_arrow_rain","projectile","first"],HandItems:[{id:"minecraft:stone",Count:1b,tag:{Owner:[]}},{}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:200,ShowParticles:0b}]}
execute if score @a[tag=user,limit=1] teamNumber matches 1 run team join Red @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 2 run team join Aqua @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 3 run team join Yellow @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 4 run team join Green @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 5 run team join Purple @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 6 run team join White @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 7 run team join Black @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 8 run team join Blue @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 9 run team join Pink @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 10 run team join Gold @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 11 run team join Gray @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 12 run team join DarkRed @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 13 run team join DarkAqua @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 14 run team join DarkGreen @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 15 run team join DarkBlue @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 16 run team join DarkGray @e[tag=first,limit=1]
execute if score @a[tag=user,limit=1] teamNumber matches 17 run team join noPush @e[tag=first,limit=1]

execute store result entity @e[tag=first,limit=1] Motion[0] double 0.0005 run scoreboard players get @s Cooldown1
execute store result entity @e[tag=first,limit=1] Motion[2] double 0.0005 run scoreboard players get @s Cooldown2
data modify entity @e[tag=first,limit=1] HandItems[0].tag.Owner set from entity @a[tag=user,limit=1] UUID
particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 1 8 normal @a
particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.5 2 force @a
particle minecraft:firework ~ ~ ~ 1 1 1 1 12 normal @a
particle minecraft:firework ~ ~ ~ 1 1 1 0.5 3 force @a
execute at @a[tag=user] run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.4 4 normal @a
execute at @a[tag=user] run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.2 1 force @a
execute at @a[tag=user] run particle minecraft:firework ~ ~ ~ 1 1 1 0.4 4 normal @a
execute at @a[tag=user] run particle minecraft:firework ~ ~ ~ 1 1 1 0.2 1 force @a
tag @a[tag=user] remove user
kill @s
