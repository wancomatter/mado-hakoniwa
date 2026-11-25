scoreboard players set @s Cooldown3 240
tag @s add usedskill
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 4 1
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 1 100 normal @a
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 1 25 force @a

summon snowball ~ ~2 ~ {Glowing:1b,Motion:[0.0d,1.0d,0.0d],NoGravity:1b,Passengers:[{Invisible:1b,Marker:1b,NoGravity:1b,Tags:["bear_s3stand","wnkm.owned","wnkm.round"],id:"minecraft:armor_stand"}],Tags:["bear_s3ball","this","wnkm.owned","wnkm.round"]}
scoreboard players set @e[tag=this] counter 100
tag @e[tag=this] remove this
