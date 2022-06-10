scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[type=armor_stand,tag=StarBurstCount] if score @s playerNumber = #dummy playerNumber run tag @s add now
#unless entity @e[tag=now]
execute unless entity @e[tag=now,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["StarBurstCount","first","StarBurstCounted"],NoGravity:1b,Marker:1b,Invisible:1b}
execute unless entity @e[tag=now,limit=1] run scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
execute unless entity @e[tag=now,limit=1] run tp @e[tag=first] @s
execute unless entity @e[tag=now,limit=1] run tag @e[tag=first] remove first
execute unless entity @e[tag=now,limit=1] at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2.5 1.8
execute unless entity @e[tag=now,limit=1] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.5 3.5 3.5 1 12 normal @a
execute unless entity @e[tag=now,limit=1] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.5 3.5 3.5 1 3 force @a

#if entity @e[tag=now]
execute if entity @e[tag=now,limit=1] run tp @e[tag=now] @s
execute if entity @e[tag=now,limit=1] run scoreboard players add @e[tag=now] counter 1
execute if entity @e[tag=now,limit=1] at @s run particle minecraft:firework ~ ~ ~ 1 1 1 0.1 12 normal @a
execute if entity @e[tag=now,limit=1] at @s run particle minecraft:firework ~ ~ ~ 1 1 1 0.1 3 force @a
execute if entity @e[tag=now,limit=1,scores={counter=40..}] run tag @s add UseStarBurstStream
execute if entity @e[tag=now,limit=1,scores={counter=40..}] run scoreboard players set @s rod 1
execute if entity @e[tag=now,limit=1] run tag @e[tag=now] add StarBurstCounted
execute if entity @e[tag=now,limit=1] run tag @e[tag=now] remove now