summon skeleton ^ ^ ^6.3 {Tags:["mob","undead","first","necro_s4skeleton","skeleton_sound"],Team:"Purple",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.movement_speed",Base:0.25d}],HandItems:[{},{}],ArmorItems:[{},{},{},{}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],Silent:1b,Invulnerable:1b,NoAI:1b}
scoreboard players remove #dummy counter 1
execute if score #dummy counter matches 1.. rotated ~15 ~ run function wancomatter:boss/necro/skill4/loop
