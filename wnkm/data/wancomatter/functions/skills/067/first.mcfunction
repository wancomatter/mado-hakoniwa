scoreboard players remove @s Mana 4
scoreboard players set @s CooldownX 50
scoreboard players set @s CooldownX_max 50

playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1.2 1
execute at @s anchored eyes positioned ^ ^ ^0.1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 80 normal @a
execute at @s anchored eyes positioned ^ ^ ^0.1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 20 force @a

execute at @s anchored eyes positioned ^ ^ ^0.1 run summon marker ~ ~ ~ {Tags:["musket","first"]}
execute at @s anchored eyes positioned ^ ^ ^0.1 run tp @e[tag=first,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber

scoreboard players set #dummy dummy -660
scoreboard players set #dummy subcounter2 35
scoreboard players set #- counter 4
tag @s add musket_user
function wancomatter:skills/recoil
execute rotated as @s as @e[tag=first,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

tag @e[tag=first] remove first
