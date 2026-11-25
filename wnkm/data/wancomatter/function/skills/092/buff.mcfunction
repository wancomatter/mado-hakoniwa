summon minecraft:area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Amplifier:9b,Duration:300,Id:29},{Amplifier:1b,Duration:300,Id:26}],Radius:0.4f,WaitTime:1,potion_contents:{custom_effects:[{amplifier:9b,duration:300,id:"minecraft:conduit_power"},{amplifier:1b,duration:300,id:"minecraft:luck"}]},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}
execute if entity @s[type=player] run tellraw @s [{"selector":"@a[tag=user,limit=1]","color":"light_purple"},{"text":"から","color":"gray"},{"text":"ベガ","color":"aqua","bold":true},{"text":"による支援を受けた","color":"gray"}]
tag @s remove hit
