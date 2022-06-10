scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[type=armor_stand,tag=AwakeCount] if score @s playerNumber = #dummy playerNumber run tag @s add now-AwakeCount
#unless entity @e[tag=now-AwakeCount]
execute unless entity @e[tag=now-AwakeCount,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["AwakeCount","discharge","AwakeCounted"],NoGravity:1b,Marker:1b,Invisible:1b}
execute unless entity @e[tag=now-AwakeCount,limit=1] run scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
execute unless entity @e[tag=now-AwakeCount,limit=1] run tp @e[tag=discharge] @s
execute unless entity @e[tag=now-AwakeCount,limit=1] run tag @e[tag=discharge] remove discharge
execute unless entity @e[tag=now-AwakeCount,limit=1] at @s run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 2
execute unless entity @e[tag=now-AwakeCount,limit=1] at @s run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 2
execute unless entity @e[tag=now-AwakeCount,limit=1] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.5 3.5 3.5 1 200 normal @a
execute unless entity @e[tag=now-AwakeCount,limit=1] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.5 3.5 3.5 1 50 force @a

#if entity @e[tag=now-AwakeCount]
execute if entity @e[tag=now-AwakeCount,limit=1] run tp @e[tag=now-AwakeCount] @s
execute if entity @e[tag=now-AwakeCount,limit=1] run scoreboard players add @e[tag=now-AwakeCount] counter 1
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=8}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.0 3.0 3.0 1 175 normal @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=8}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.0 3.0 3.0 1 44 force @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=15}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 2.5 2.5 2.5 1 150 normal @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=15}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 2.5 2.5 2.5 1 38 force @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=22}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 2.0 1.0 1.0 1 125 normal @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=22}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 2.0 1.0 1.0 1 31 force @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=29}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 1.5 1.5 1.5 1 100 normal @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=29}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 1.5 1.5 1.5 1 25 force @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=36}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 1.0 1.0 1.0 1 80 normal @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=36}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 1.0 1.0 1.0 1 20 force @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=43}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 0.5 0.5 0.5 1 100 normal @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=43}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 0.5 0.5 0.5 1 25 force @a
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=50..}] run tag @s add UseAwakening
execute if entity @e[tag=now-AwakeCount,limit=1,scores={counter=50..}] run scoreboard players set @s rod 1
execute if entity @e[tag=now-AwakeCount,limit=1] run tag @e[tag=now-AwakeCount] add AwakeCounted
execute if entity @e[tag=now-AwakeCount,limit=1] run tag @e[tag=now-AwakeCount] remove now-AwakeCount