scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[type=armor_stand,tag=kusaCharge] if score @s playerNumber = #dummy playerNumber run tag @s add now-kusaCharge
#tp @s @s
#unless entity @e[tag=now-kusaCharge]
execute unless entity @e[tag=now-kusaCharge,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["kusaCharge","discharge","kusaCounted"],NoGravity:1b,Marker:1b,Invisible:1b}
execute unless entity @e[tag=now-kusaCharge,limit=1] run scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
execute unless entity @e[tag=now-kusaCharge,limit=1] run tp @e[tag=discharge] @s
execute unless entity @e[tag=now-kusaCharge,limit=1] run tag @e[tag=discharge] remove discharge
execute unless entity @e[tag=now-kusaCharge,limit=1] at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
execute unless entity @e[tag=now-kusaCharge,limit=1] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.5 3.5 3.5 1 200 normal @a
execute unless entity @e[tag=now-kusaCharge,limit=1] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.5 3.5 3.5 1 50 force @a

#if entity @e[tag=now-kusaCharge]
execute if entity @e[tag=now-kusaCharge,limit=1] run scoreboard players add @e[tag=now-kusaCharge] counter 1
#execute if entity @e[tag=now-kusaCharge,limit=1] run tp @s @e[tag=now-kusaCharge,limit=1,sort=nearest]
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=3}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.0 3.0 3.0 1 175 normal @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=3}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 3.0 3.0 3.0 1 44 force @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=6}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 2.5 2.5 2.5 1 150 normal @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=6}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 2.5 2.5 2.5 1 38 force @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=9}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 2.0 1.0 1.0 1 125 normal @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=9}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 2.0 1.0 1.0 1 31 force @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=12}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 1.5 1.5 1.5 1 100 normal @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=12}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 1.5 1.5 1.5 1 25 force @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=15}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 1.0 1.0 1.0 1 80 normal @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=15}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 1.0 1.0 1.0 1 20 force @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=18}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 0.5 0.5 0.5 1 100 normal @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=18}] at @s anchored eyes run particle minecraft:dust 1 1 1 0.7 ^ ^ ^ 0.5 0.5 0.5 1 25 force @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=20}] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=20}] at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=20..}] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 1 0.1 1 0 1 normal @a
execute if entity @e[tag=now-kusaCharge,limit=1,scores={counter=20..}] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 1 0.1 1 0 1 force @a
execute if entity @e[tag=now-kusaCharge,limit=1] run tag @e[tag=now-kusaCharge] add kusaCounted
execute if entity @e[tag=now-kusaCharge,limit=1] run tag @e[tag=now-kusaCharge] remove now-kusaCharge