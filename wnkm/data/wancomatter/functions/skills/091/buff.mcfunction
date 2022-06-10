playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
summon minecraft:area_effect_cloud ~ ~ ~ {Effects:[{Id:31b,Amplifier:0b,Duration:200,ShowParticles:0b,ShowIcon:1b}],Duration:5,Age:4,Radius:0.4f,WaitTime:1}
execute if entity @s[type=player] run tellraw @s [{"selector":"@a[tag=user,limit=1]","color":"light_purple"},{"text":"から","color":"gray"},{"text": "天","color":"red","italic":false},{"text": "の","color":"yellow","italic":false},{"text": "印","color":"green","italic":false},{"text": "章","color":"blue","italic":false},{"text":"による支援を受けた","color":"gray"}]
tag @s remove hit