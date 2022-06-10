scoreboard players set @s Cooldown3 240
tag @s add usedskill
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 4 1
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 1 100 normal @a
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 1 25 force @a

summon snowball ~ ~2 ~ {Tags:["bear_s3ball","this"],Motion:[0d,1d,0d],NoGravity:1b,Glowing:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["bear_s3stand"],Marker:1b,Invisible:1b,NoGravity:1b}]}
scoreboard players set @e[tag=this] counter 100
tag @e[tag=this] remove this