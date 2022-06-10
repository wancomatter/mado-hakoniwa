execute if data entity @s {crit:1b} run tag @s add crit_arrow
execute if entity @s[tag=crit_arrow] store result entity @s damage double 0.1 run data get entity @s damage 13
execute if entity @s[tag=crit_arrow] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:["arrow_vector"],Duration:1}
execute if entity @s[tag=crit_arrow] run data modify entity @e[x=0,y=0,z=0,distance=..1,limit=1,tag=arrow_vector] Pos set from entity @s Motion
execute if entity @s[tag=crit_arrow] as @e[tag=arrow_vector] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=crit_arrow] store result score @s bless1 run data get entity @e[x=0,y=0,z=0,distance=..1,limit=1,tag=arrow_vector] Rotation[0] 100
execute if entity @s[tag=crit_arrow] store result score @s bless2 run data get entity @e[x=0,y=0,z=0,distance=..1,limit=1,tag=arrow_vector] Rotation[1] 100
execute if entity @s[tag=crit_arrow] run kill @e[tag=arrow_vector]
execute if entity @s[tag=crit_arrow] run data merge entity @s {crit:0b}

execute if score #bless counter matches 1 store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 1150
execute if score #bless counter matches 1 store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 1150
execute if score #bless counter matches 1 store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 1150
execute if score #bless counter matches 2.. store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 1300
execute if score #bless counter matches 2.. store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 1300
execute if score #bless counter matches 2.. store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 1300
scoreboard players reset #bless

execute if entity @s[type=spectral_arrow] run data merge entity @s {Duration:220}
execute if data entity @s {Color:11184810} store result entity @s damage double 0.01 run data get entity @s damage 150
execute if data entity @s {Color:43520} run tag @s add creeperArrow
execute if data entity @s {Color:16733525} run tag @s add meteorArrow
execute if data entity @s {Color:16776960} run tag @s add lightningArrow
execute if data entity @s {Color:16776960} run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0.5
execute if data entity @s {Color:16776960} run data modify entity @s CustomPotionEffects prepend value {Id:9,Amplifier:8b,Duration:2,ShowParticles:0b,ShowIcon:0b}
execute if data entity @s {Color:5614335} run tag @s add freezeArrow
execute unless entity @s[tag=!creeperArrow,tag=!meteorArrow,tag=!freezeArrow] run scoreboard players operation @s playerNumber = @a[tag=arrow-launcher-p,limit=1] playerNumber
execute unless entity @s[tag=!creeperArrow,tag=!meteorArrow,tag=!freezeArrow] store result score @s subcounter2 run data get entity @s UUID[1] 1

execute if entity @s[tag=arrow_recall] if entity @s[nbt={Color:11184810}] run data modify entity @s CustomPotionEffects prepend value {Id:9,Amplifier:3b,Duration:2,ShowParticles:0b,ShowIcon:0b,Ambient:1b}
execute if entity @s[tag=arrow_recall] if entity @s[nbt={Color:43521}] run data modify entity @s CustomPotionEffects prepend value {Id:9,Amplifier:4b,Duration:2,ShowParticles:0b,ShowIcon:0b,Ambient:1b}
execute if entity @s[tag=arrow_recall] if entity @s[nbt={Color:11141290}] run data modify entity @s CustomPotionEffects prepend value {Id:9,Amplifier:5b,Duration:2,ShowParticles:0b,ShowIcon:0b,Ambient:1b}
execute if entity @s[tag=arrow_recall] if entity @s[nbt={Color:43520}] run data modify entity @s CustomPotionEffects prepend value {Id:9,Amplifier:6b,Duration:2,ShowParticles:0b,ShowIcon:0b,Ambient:1b}
execute if entity @s[tag=arrow_recall] if entity @s[nbt={Color:16733525}] run data modify entity @s CustomPotionEffects prepend value {Id:9,Amplifier:7b,Duration:2,ShowParticles:0b,ShowIcon:0b,Ambient:1b}
execute if entity @s[tag=arrow_recall] if entity @s[nbt={Color:5614335}] run data modify entity @s CustomPotionEffects prepend value {Id:9,Amplifier:9b,Duration:2,ShowParticles:0b,ShowIcon:0b,Ambient:1b}
execute if entity @s[tag=arrow_recall] unless data entity @s {CustomPotionEffects:[{Id:9}]} run data modify entity @s CustomPotionEffects prepend value {Id:9,Amplifier:1b,Duration:2,ShowParticles:0b,ShowIcon:0b,Ambient:1b}
execute if entity @s[tag=arrow_recall] store result entity @s CustomPotionEffects[{Id:9,ShowParticles:0b,ShowIcon:0b,Ambient:1b}].Duration int 1 run scoreboard players get @a[tag=arrow-launcher-p,limit=1] playerNumber
execute if entity @s[tag=arrow_recall] run tag @s remove arrow_recall