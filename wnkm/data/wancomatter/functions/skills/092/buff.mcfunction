summon minecraft:area_effect_cloud ~ ~ ~ {Effects:[{Id:29,Amplifier:9b,Duration:300},{Id:26,Amplifier:1b,Duration:300}],Duration:5,Age:4,Radius:0.4f,WaitTime:1}
execute if entity @s[type=player] run tellraw @s [{"selector":"@a[tag=user,limit=1]","color":"light_purple"},{"text":"から","color":"gray"},{"text":"ベガ","color":"aqua","bold":true},{"text":"による支援を受けた","color":"gray"}]
tag @s remove hit