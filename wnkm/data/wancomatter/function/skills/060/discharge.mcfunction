scoreboard players remove @s Mana 4
scoreboard players set @s CooldownX 120
scoreboard players set @s CooldownX_max 120

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["death_counter_stand","stable","this","wnkm.owned"]}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @s add p.death_counter
tag @e[tag=this] remove this

playsound minecraft:item.totem.use master @a ~ ~ ~ 1.2 1.88
particle block{block_state:"minecraft:obsidian"} ~ ~1 ~ 0.6 0.6 0.6 1 40 normal @a
particle block{block_state:"minecraft:obsidian"} ~ ~1 ~ 0.6 0.6 0.6 1 10 force @a
particle falling_dust{block_state:"minecraft:obsidian"} ~ ~1 ~ 1.6 1.6 1.6 1 80 normal @a
particle falling_dust{block_state:"minecraft:obsidian"} ~ ~1 ~ 1.6 1.6 1.6 1 20 force @a
