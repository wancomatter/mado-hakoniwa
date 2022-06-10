summon area_effect_cloud ~ ~ ~ {CustomName:'{"text": "ゾンビホース・ジェットコースター","color":"dark_green","italic":false}',Radius:3.0f,Particle:"minecraft:explosion",Duration:5,Age:4,WaitTime:1}
playsound entity.generic.explode master @a ~ ~ ~ 2 0.5

execute as @e[scores={maxHP=1..},distance=..3.3] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
execute unless score #difficult counter matches 2..4 run effect give @a[tag=hit] poison 5 0
execute if score #difficult counter matches 2 run effect give @a[tag=hit] poison 6 0
execute if score #difficult counter matches 3 run effect give @a[tag=hit] poison 9 0
execute if score #difficult counter matches 4 run effect give @a[tag=hit] poison 12 0
data merge storage wnkm:storage_damage {Damage:15.0f,WeaponNumber:-67,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=necro,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 17.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 20.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 23.0f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

execute if score @e[tag=necro,limit=1] maxMana matches 3 run summon armor_stand ~ 7.5 ~ {Tags:["necro_s7_spirit"],Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Fire:32767s,ArmorItems:[{},{},{},{id:"minecraft:coal_block",Count:1b,tag:{Enchantments:[{}]}}],DisabledSlots:4144959,Pose:{Head:[180f,0f,0f]}}

kill @s