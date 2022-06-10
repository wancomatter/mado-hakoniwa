scoreboard players remove @s Mana 13
scoreboard players set @s CooldownX 500
scoreboard players set @s CooldownX_max 500

summon armor_stand ~ ~ ~ {Tags:["Awakening-mode","stable","discharge"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge

playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 3 0.5
particle minecraft:flame ~ ~1 ~ 0 0 0 0.35 300 normal @a
particle minecraft:flame ~ ~1 ~ 0 0 0 0.5 75 force @a
particle minecraft:flash ~ ~ ~ 2 0 2 1 20 normal @a
particle minecraft:flash ~ ~ ~ 1 0 1 1 5 force @a
particle minecraft:lava ~ ~ ~ 1 1 1 1 30 normal @a
particle minecraft:lava ~ ~ ~ 1 1 1 1 10 force @a
tag @s remove UseAwakening