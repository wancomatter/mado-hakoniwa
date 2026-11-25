playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
summon minecraft:area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Amplifier:0b,Duration:200,Id:31,ShowIcon:1b,ShowParticles:0b}],Radius:0.4f,WaitTime:1,potion_contents:{custom_effects:[{amplifier:0b,duration:200,id:"minecraft:bad_omen",show_icon:1b,show_particles:0b}]},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}
execute if entity @s[type=player] run tellraw @s [{"selector":"@a[tag=user,limit=1]","color":"light_purple"},{"text":"から","color":"gray"},{"text":"天","color":"red","italic":false},{"text":"の","color":"yellow","italic":false},{"text":"印","color":"green","italic":false},{"text":"章","color":"blue","italic":false},{"text":"による支援を受けた","color":"gray"}]
tag @s remove hit
