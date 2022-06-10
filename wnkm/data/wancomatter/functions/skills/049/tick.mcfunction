scoreboard players add @s counter 1
execute if score @s counter matches 1 if entity @s[nbt={Effects:[{ShowParticles:0b,Amplifier:59b,Id:31b}]}] run tag @s add skelepon_grenade
execute if score @s counter matches 1 unless entity @s[tag=skelepon_grenade] run function wancomatter:skills/049/bomb2
execute if score @s counter matches 4 if entity @s[tag=skelepon_grenade] run function wancomatter:skills/049/bomb2