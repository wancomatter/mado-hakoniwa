execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 80
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 120
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

scoreboard players add @s Cooldown1_max 1
summon skeleton ^1 ^-2 ^1 {Tags:["mob","mobInit","undead","first","necro_s1skeleton","necro_s1_sword","skeleton_sound"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.movement_speed",Base:0.20d}],HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{AttributeModifiers:[{}]}}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],Silent:1b,Invulnerable:1b,NoAI:1b,AbsorptionAmount:400f}
summon skeleton ^-1 ^-2 ^1 {Tags:["mob","mobInit","undead","first","necro_s1skeleton","necro_s1_axe","skeleton_sound"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.movement_speed",Base:0.26d},{Name:"generic.armor_toughness",Base:20d},{Name:"generic.knockback_resistance",Base:1d}],HandItems:[{},{}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b},{id:"minecraft:diamond_leggings",Count:1b},{id:"minecraft:diamond_chestplate",Count:1b},{id:"minecraft:diamond_helmet",Count:1b}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],Silent:1b,Invulnerable:1b,NoAI:1b,AbsorptionAmount:400f}
summon skeleton ^-1 ^-2 ^-1 {Tags:["mob","mobInit","undead","first","necro_s1skeleton","necro_s1_mage","skeleton_sound"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.attack_damage",Base:-6.0d},{Name:"generic.movement_speed",Base:0.25d}],HandItems:[{id:"minecraft:bone",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{id:"minecraft:golden_leggings",Count:1b,tag:{AttributeModifiers:[{}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{AttributeModifiers:[{}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{AttributeModifiers:[{}]}}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],Silent:1b,Invulnerable:1b,NoAI:1b,AbsorptionAmount:400f}
execute if score #difficult counter matches 2..4 run summon skeleton ^1 ^-2 ^-1 {Tags:["mob","mobInit","undead","first","necro_s1skeleton","necro_s1_priest","skeleton_sound"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.movement_speed",Base:0.0d}],HandItems:[{},{}],ArmorItems:[{},{},{},{}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],Silent:1b,Invulnerable:1b,NoAI:1b,AbsorptionAmount:400f}
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
