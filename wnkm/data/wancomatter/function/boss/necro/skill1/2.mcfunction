execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 80
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 120
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

scoreboard players add @s Cooldown1_max 1
summon skeleton ^1 ^-2 ^1 {AbsorptionAmount:400.0f,Health:1000.0f,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["mob","mobInit","undead","first","necro_s1skeleton","necro_s1_sword","skeleton_sound","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:4.0d,id:"minecraft:attack_damage"},{base:0.2d,id:"minecraft:movement_speed"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:{head:{components:{"minecraft:attribute_modifiers":[]},count:1,id:"minecraft:iron_helmet"}}}
summon skeleton ^-1 ^-2 ^1 {AbsorptionAmount:400.0f,Health:1000.0f,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["mob","mobInit","undead","first","necro_s1skeleton","necro_s1_axe","skeleton_sound","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:6.0d,id:"minecraft:attack_damage"},{base:0.26d,id:"minecraft:movement_speed"},{base:20.0d,id:"minecraft:armor_toughness"},{base:1.0d,id:"minecraft:knockback_resistance"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:{chest:{count:1,id:"minecraft:diamond_chestplate"},feet:{count:1,id:"minecraft:diamond_boots"},head:{count:1,id:"minecraft:diamond_helmet"},legs:{count:1,id:"minecraft:diamond_leggings"}}}
summon skeleton ^-1 ^-2 ^-1 {AbsorptionAmount:400.0f,Health:1000.0f,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["mob","mobInit","undead","first","necro_s1skeleton","necro_s1_mage","skeleton_sound","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:-6.0d,id:"minecraft:attack_damage"},{base:0.25d,id:"minecraft:movement_speed"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:{chest:{components:{"minecraft:attribute_modifiers":[]},count:1,id:"minecraft:golden_chestplate"},head:{components:{"minecraft:attribute_modifiers":[]},count:1,id:"minecraft:leather_helmet"},legs:{components:{"minecraft:attribute_modifiers":[]},count:1,id:"minecraft:golden_leggings"},mainhand:{components:{"minecraft:enchantment_glint_override":1b},count:1,id:"minecraft:bone"}}}
execute if score #difficult counter matches 2..4 run summon skeleton ^1 ^-2 ^-1 {AbsorptionAmount:400.0f,Health:1000.0f,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["mob","mobInit","undead","first","necro_s1skeleton","necro_s1_priest","skeleton_sound","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:6.0d,id:"minecraft:attack_damage"},{base:0.0d,id:"minecraft:movement_speed"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:[{},{},{},{}]}
execute as @e[tag=first,tag=necro_s1_sword] run loot replace entity @s weapon.mainhand loot wancomatter:items/meele_weapons/kokuren
execute as @e[tag=first,tag=necro_s1_sword] run loot replace entity @s armor.chest loot wancomatter:items/armor/wind_arm
execute as @e[tag=first,tag=necro_s1_sword] run loot replace entity @s armor.legs loot wancomatter:items/armor/wind_leg
execute if score #difficult counter matches 2..4 as @e[tag=first,tag=necro_s1_sword] run loot replace entity @s armor.feet loot wancomatter:items/armor/wind_boots
execute as @e[tag=first,tag=necro_s1_axe] run loot replace entity @s weapon.mainhand loot wancomatter:items/meele_weapons/battleaxe
execute as @e[tag=first,tag=necro_s1_axe] run loot replace entity @s weapon.offhand loot wancomatter:items/offitems/white_shield
execute as @e[tag=first,tag=necro_s1_axe] run scoreboard players set @s Mana 200
execute as @e[tag=first,tag=necro_s1_priest] run loot replace entity @s armor.chest loot wancomatter:items/armor/bless_arm
execute as @e[tag=first,tag=necro_s1_priest] run loot replace entity @s weapon.mainhand loot wancomatter:items/magic_assist/heal
execute as @e[tag=first,tag=necro_s1_sword] run scoreboard players set @s dmgProtection 40
execute as @e[tag=first,tag=necro_s1_sword] run scoreboard players set @s Cooldown2 2
execute as @e[tag=first,tag=necro_s1_sword] run scoreboard players set @s Cooldown2_max 2
execute as @e[tag=first,tag=necro_s1_sword] if score #difficult counter matches 4 run scoreboard players set @s Cooldown2_max 3
execute as @e[tag=first,tag=necro_s1_mage] run scoreboard players set @s magicResist 80
execute as @e[tag=first,tag=necro_s1_mage] unless score #difficult counter matches 2..4 run scoreboard players set @s subcounter2 94
execute as @e[tag=first,tag=necro_s1_mage] if score #difficult counter matches 2 run scoreboard players set @s subcounter2 96
execute as @e[tag=first,tag=necro_s1_mage] if score #difficult counter matches 3 run scoreboard players set @s subcounter2 98
execute as @e[tag=first,tag=necro_s1_mage] if score #difficult counter matches 4 run scoreboard players set @s subcounter2 100
execute as @e[tag=first,tag=necro_s1_priest] run scoreboard players set @s dmgProtection 20
execute as @e[tag=first] positioned as @s run tp @s ~ ~ ~ ~ ~
effect give @e[tag=first] luck 2 9
scoreboard players set @e[tag=first] subcounter 41
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first] Cooldown1_max = @s Cooldown1_max
tag @e[tag=first] remove first
