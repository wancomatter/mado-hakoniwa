scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[type=armor_stand,tag=bombSneakCount] if score @s playerNumber = #dummy playerNumber run tag @s add now-bombSneakCount
#unless entity @e[tag=now-bombSneakCount]
execute unless entity @e[tag=now-bombSneakCount,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["bombSneakCount","discharge","bombSneakCounted"],NoGravity:1b,Marker:1b,Invisible:1b}
execute unless entity @e[tag=now-bombSneakCount,limit=1] run scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
execute unless entity @e[tag=now-bombSneakCount,limit=1] run tp @e[tag=discharge] @s
execute unless entity @e[tag=now-bombSneakCount,limit=1] run tag @e[tag=discharge] remove discharge
execute unless entity @e[tag=now-bombSneakCount,limit=1] at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1.2 0.5
execute unless entity @e[tag=now-bombSneakCount,limit=1] at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1.2 0.5
execute unless entity @e[tag=now-bombSneakCount,limit=1] at @s anchored eyes run particle minecraft:dust 0.1 0.1 0.1 0.7 ^ ^ ^ 3.5 3.5 3.5 1 200 normal @a
execute unless entity @e[tag=now-bombSneakCount,limit=1] at @s anchored eyes run particle minecraft:dust 0.1 0.1 0.1 0.7 ^ ^ ^ 3.5 3.5 3.5 1 50 force @a

#if entity @e[tag=now-bombSneakCount]
execute if entity @e[tag=now-bombSneakCount,limit=1] run tp @e[tag=now-bombSneakCount] @s
execute if entity @e[tag=now-bombSneakCount,limit=1] run scoreboard players add @e[tag=now-bombSneakCount] counter 1
execute if entity @e[tag=now-bombSneakCount,limit=1,scores={counter=50..}] run tag @s add UsebombInvisible
execute if entity @e[tag=now-bombSneakCount,limit=1,scores={counter=50..}] run scoreboard players set @s rod 1
execute if entity @e[tag=now-bombSneakCount,limit=1] run tag @e[tag=now-bombSneakCount] add bombSneakCounted
execute if entity @e[tag=now-bombSneakCount,limit=1,scores={counter=50..}] run kill @e[tag=now-bombSneakCount,scores={counter=50..}]
execute if entity @e[tag=now-bombSneakCount,limit=1] run tag @e[tag=now-bombSneakCount] remove now-bombSneakCount
