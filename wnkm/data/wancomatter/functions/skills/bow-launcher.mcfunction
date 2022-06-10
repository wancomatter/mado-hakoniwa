execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,tag=!projectile,limit=1,sort=nearest,distance=..3.5] run tag @s add first
execute unless entity @e[tag=first] anchored eyes positioned ^ ^ ^ as @e[type=spectral_arrow,tag=!projectile,limit=1,sort=nearest,distance=..3.5] run tag @s add first
execute as @e[tag=first] store success score @s dummy run data get entity @s CustomPotionEffects
execute as @e[tag=first] unless score @s dummy matches 1.. store success score @s dummy run data get entity @s Color
execute as @e[tag=first] unless score @s dummy matches 1.. run data merge entity @s {Color:-1,life:1200s}
execute as @e[tag=first] if score @s dummy matches 1.. run data merge entity @s {life:1200s}
execute if entity @s[scores={dummy=121}] as @e[tag=first] store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 1300
execute if entity @s[scores={dummy=121}] as @e[tag=first] store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 1300
execute if entity @s[scores={dummy=121}] as @e[tag=first] store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 1300
execute if entity @s[scores={dummy=121}] as @e[tag=first] store result entity @s damage double 0.01 run data get entity @s damage 85

execute if entity @s[scores={dummy=122}] as @e[tag=first] store result entity @s damage double 0.01 run data get entity @s damage 125

execute if entity @s[scores={dummy=123}] as @e[tag=first,type=arrow] run tag @s add arrow_recall
execute if entity @s[scores={dummy=123}] run scoreboard players operation @e[tag=first,type=arrow] playerNumber = @s playerNumber

execute if entity @s[scores={dummy=124}] as @e[tag=first] store result entity @s damage double 0.01 run data get entity @s damage 115
execute if entity @s[scores={dummy=124}] unless data entity @e[tag=first,limit=1] {crit:1b} run tag @s add flag
execute if entity @s[scores={dummy=124},tag=flag] as @e[tag=first] at @s run function wancomatter:skills/bow/short_bow
execute if entity @s[scores={dummy=124},tag=!flag] as @e[tag=first] run data merge entity @s {crit:0b}
execute if entity @s[scores={dummy=124},tag=flag] run tag @s remove flag

scoreboard players reset #bless
execute if entity @s[scores={bless1=11}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=11}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=11}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=11}] run scoreboard players add #bless counter 1

tag @s add arrow-launcher-p
execute as @e[tag=first] unless entity @s[type=!arrow,type=!spectral_arrow] run function wancomatter:skills/arrow-launcher
tag @s remove arrow-launcher-p
tag @e[tag=first] remove first
