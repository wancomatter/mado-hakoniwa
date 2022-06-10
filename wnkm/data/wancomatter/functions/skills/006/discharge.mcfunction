#コスト支払い
scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

effect give @s minecraft:invisibility 11 0
effect give @s minecraft:speed 11 33

summon area_effect_cloud ~ ~ ~ {Duration:5,Age:4,WaitTime:1,Radius:0.3f,Effects:[{Id:26b,Duration:10,Amplifier:9b}]}
summon marker ~ ~ ~ {Tags:["discharge","heathaze_stand"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy