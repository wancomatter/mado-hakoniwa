scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1.2 0.8
particle minecraft:splash ~ ~ ~ 2 2 2 1 200 normal @a
particle minecraft:splash ~ ~ ~ 2 2 2 1 50 force @a

summon area_effect_cloud ~ ~ ~ {Tags:["set_water","stable","discharge"],Radius:0f,Duration:3600}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge

fill ~0.5 ~0.5 ~0.5 ~-0.5 ~-0.5 ~-0.5 minecraft:water keep
fill ~1.5 ~0.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 minecraft:structure_void keep
execute if block ~ ~-1 ~ #wancomatter:3air run setblock ~ ~-1 ~ minecraft:structure_void