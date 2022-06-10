execute unless score @s maxHP matches 1.. run tag @s add user_killed
#スキル使用不可
execute if score @s rod matches 1.. run scoreboard players reset @s rod
execute if score @s trident matches 1.. run scoreboard players reset @s trident
#斬撃を出すだけ
execute if score #dummy dummy matches ..47 run effect give @s glowing 8 0
execute if score #dummy dummy matches 52 anchored eyes run summon minecraft:area_effect_cloud ^1 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 51 anchored eyes run summon minecraft:area_effect_cloud ^3 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 58 anchored eyes run summon minecraft:area_effect_cloud ^-1 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 57 anchored eyes run summon minecraft:area_effect_cloud ^-3 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 64 anchored eyes run summon minecraft:area_effect_cloud ^1 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 63 anchored eyes run summon minecraft:area_effect_cloud ^3 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 70 anchored eyes run summon minecraft:area_effect_cloud ^-1 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 69 anchored eyes run summon minecraft:area_effect_cloud ^-3 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 80 anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^2 {Tags:["109stream","109stream2"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:30b,Duration:-1}]}
execute if score #dummy dummy matches 80 anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^4 {Tags:["109stream","109stream2"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:30b,Duration:-1}]}
execute if score #dummy dummy matches 95 anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^2 {Tags:["109stream","109stream2"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:30b,Duration:-1}]}
execute if score #dummy dummy matches 95 anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^4 {Tags:["109stream","109stream2"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:30b,Duration:-1}]}
#ここまで6
execute if score #dummy dummy matches 108 anchored eyes run summon minecraft:area_effect_cloud ^-1.00 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 107 anchored eyes run summon minecraft:area_effect_cloud ^0.75 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 106 anchored eyes run summon minecraft:area_effect_cloud ^2.50 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 105 anchored eyes run summon minecraft:area_effect_cloud ^4.25 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 114 anchored eyes run summon minecraft:area_effect_cloud ^-4.25 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 115 anchored eyes run summon minecraft:area_effect_cloud ^-2.50 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 116 anchored eyes run summon minecraft:area_effect_cloud ^-0.75 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 117 anchored eyes run summon minecraft:area_effect_cloud ^1.00 ^-0.4 ^3 {Tags:["109stream","109stream1"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 122 anchored eyes rotated ~-45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.5 {Tags:["109stream","109stream4"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1},{Id:25,Amplifier:19b,Duration:4}]}
execute if score #dummy dummy matches 123 anchored eyes rotated ~-26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.5 {Tags:["109stream","109stream4"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1},{Id:25,Amplifier:19b,Duration:4}]}
execute if score #dummy dummy matches 124 anchored eyes rotated ~-7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.5 {Tags:["109stream","109stream4"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1},{Id:25,Amplifier:19b,Duration:4}]}
execute if score #dummy dummy matches 125 anchored eyes rotated ~12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.5 {Tags:["109stream","109stream4"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1},{Id:25,Amplifier:19b,Duration:4}]}
execute if score #dummy dummy matches 133..134 run tp @s @s
execute if score #dummy dummy matches 128 run effect give @s levitation 1 25 true
execute if score #dummy dummy matches 138 run effect clear @s levitation
execute if score #dummy dummy matches 139 run effect give @s levitation 1 128 true
execute if score #dummy dummy matches 140 run effect clear @s levitation
execute if score #dummy dummy matches 140..144 anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.0 {Tags:["109stream","109stream3"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2.5f,Effects:[{Id:9,Amplifier:48b,Duration:-1}]}
execute if score #dummy dummy matches 138 run function wancomatter:operation/instant_kb_resist
#ここまで10
execute if score #dummy dummy matches 153 anchored eyes rotated ~45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 154 anchored eyes rotated ~26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 155 anchored eyes rotated ~7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 156 anchored eyes rotated ~-12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 165 anchored eyes rotated ~-45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 166 anchored eyes rotated ~-26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 167 anchored eyes rotated ~-7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 168 anchored eyes rotated ~12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 175 anchored eyes rotated ~45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 175 anchored eyes rotated ~26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 176 anchored eyes rotated ~7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 176 anchored eyes rotated ~-12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 180 anchored eyes rotated ~-45 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 180 anchored eyes rotated ~-26 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 181 anchored eyes rotated ~-7 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 181 anchored eyes rotated ~12 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.1 {Tags:["109stream","109stream5"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2f,Effects:[{Id:9,Amplifier:15b,Duration:-1}]}
execute if score #dummy dummy matches 186 anchored eyes rotated ~-19 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.2 {Tags:["109stream","109stream6"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2.5f,Effects:[{Id:9,Amplifier:24b,Duration:-1}]}
execute if score #dummy dummy matches 186 anchored eyes rotated ~ ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.0 {Tags:["109stream","109stream6"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2.5f,Effects:[{Id:9,Amplifier:24b,Duration:-1}]}
execute if score #dummy dummy matches 186 anchored eyes rotated ~19 ~ run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.2 {Tags:["109stream","109stream6"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:2.5f,Effects:[{Id:9,Amplifier:24b,Duration:-1}]}
#ここまで15
execute if score #dummy dummy matches 186..206 run tp @s @s
execute if score #dummy dummy matches 194..205 run tp @s ~ ~ ~ ~-30 ~
execute if score #dummy dummy matches 207 at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.4 ^3.0 {Tags:["109stream","109stream7"],Particle:"sweep_attack",Age:4,Duration:5,WaitTime:1,Radius:4.5f,Effects:[{Id:9,Amplifier:60b,Duration:-1}]}

execute if entity @e[tag=109stream,limit=1] as @e[tag=109stream] at @s run function wancomatter:skills/113/2
