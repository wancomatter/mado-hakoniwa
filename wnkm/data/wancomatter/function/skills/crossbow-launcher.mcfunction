execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,tag=!projectile,distance=..3.5] run tag @s add first
execute unless entity @e[tag=first] anchored eyes positioned ^ ^ ^ as @e[type=spectral_arrow,tag=!projectile,distance=..3.5] run tag @s add first
execute as @e[tag=first] store success score @s dummy run data get entity @s CustomPotionEffects
execute as @e[tag=first] unless score @s dummy matches 1.. store success score @s dummy run data get entity @s Color
execute as @e[tag=first] unless score @s dummy matches 1.. run data merge entity @s {Color:-1,life:1200s}
execute as @e[tag=first] if score @s dummy matches 1.. run data merge entity @s {life:1200s}
execute if entity @s[tag=fire_crossbow] as @e[tag=first] run data merge entity @s {Fire:300s}
execute if entity @s[tag=fire_crossbow] run tag @s remove fire_crossbow
execute if entity @s[scores={dummy=131}] as @e[tag=first] store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 650
execute if entity @s[scores={dummy=131}] as @e[tag=first] store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 650
execute if entity @s[scores={dummy=131}] as @e[tag=first] store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 650
#execute if entity @s[scores={dummy=131}] as @e[tag=first] store result entity @s damage double 0.01 run data get entity @s damage 100

#execute if entity @s[scores={dummy=133}] unless score @s Mana matches 2.. run kill @e[tag=first]
#execute if entity @s[scores={dummy=133}] unless score @s Mana matches 2.. run function wancomatter:skills/fail
#execute if entity @s[scores={dummy=133}] if score @s Mana matches 2.. run scoreboard players remove @s Mana 2
execute if entity @s[scores={dummy=133}] as @e[tag=first] run tag @s add magic_crossbow
execute if entity @s[scores={dummy=133}] as @e[tag=first] store result entity @s damage double 0.01 run data get entity @s damage 90

execute if entity @s[scores={dummy=132}] run function wancomatter:skills/crossbow/02/shot
execute if entity @s[scores={dummy=135}] run function wancomatter:skills/crossbow/05/shot

scoreboard players reset #bless
execute if entity @s[scores={bless1=11}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=11}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=11}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=11}] run scoreboard players add #bless counter 1

tag @s add arrow-launcher-p
execute as @e[tag=first] unless entity @s[type=!arrow,type=!spectral_arrow] run function wancomatter:skills/arrow-launcher
tag @s remove arrow-launcher-p
tag @e[tag=first] remove first
