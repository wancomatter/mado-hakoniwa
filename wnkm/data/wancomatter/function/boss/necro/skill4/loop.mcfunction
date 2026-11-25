summon skeleton ^ ^ ^6.3 {Health:1000.0f,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["mob","undead","first","necro_s4skeleton","skeleton_sound","wnkm.owned","wnkm.round"],Team:"Purple",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:6.0d,id:"minecraft:attack_damage"},{base:0.25d,id:"minecraft:movement_speed"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:[{},{},{},{}]}
scoreboard players remove #dummy counter 1
execute if score #dummy counter matches 1.. rotated ~15 ~ run function wancomatter:boss/necro/skill4/loop
