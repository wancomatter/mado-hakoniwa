#コスト支払い
scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160

effect give @s minecraft:invisibility 11 0
effect give @s minecraft:speed 11 33

summon area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Amplifier:9b,Duration:10,Id:26}],Radius:0.3f,WaitTime:1,potion_contents:{custom_effects:[{amplifier:9b,duration:10,id:"minecraft:luck"}]},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}
summon marker ~ ~ ~ {Tags:["discharge","heathaze_stand","wnkm.owned","wnkm.round"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy
