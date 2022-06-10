scoreboard players remove @s Mana 4
scoreboard players set @s CooldownX 120
scoreboard players set @s CooldownX_max 120

summon armor_stand ~ ~ ~ {Tags:["death_counter_stand","stable","this"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @s add p.death_counter
tag @e[tag=this] remove this

playsound minecraft:item.totem.use master @a ~ ~ ~ 1.2 1.88
particle minecraft:block minecraft:obsidian ~ ~1 ~ 0.6 0.6 0.6 1 40 normal @a
particle minecraft:block minecraft:obsidian ~ ~1 ~ 0.6 0.6 0.6 1 10 force @a
particle minecraft:falling_dust minecraft:obsidian ~ ~1 ~ 1.6 1.6 1.6 1 80 normal @a
particle minecraft:falling_dust minecraft:obsidian ~ ~1 ~ 1.6 1.6 1.6 1 20 force @a
