scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.5 2
summon minecraft:armor_stand ^ ^ ^-4 {Tags:["first","power_star"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[tag=first,limit=1] store result score @s subcounter run data get entity @s Pos[1] 10
execute anchored eyes run tp @e[tag=first,limit=1] ^ ^1 ^-4 ~ -22.5
scoreboard players add @e[tag=first,limit=1] subcounter 2
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first

