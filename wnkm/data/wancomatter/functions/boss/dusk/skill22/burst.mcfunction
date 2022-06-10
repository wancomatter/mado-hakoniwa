playsound minecraft:entity.wither.death master @a 0 7 0 7 0.5
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 6 1.2
particle minecraft:campfire_signal_smoke 0 6 0 2 0 2 0.6 450 force @a
particle minecraft:campfire_signal_smoke 0 6 0 2 0 2 0.6 750 normal @a
tellraw @a ["",{"text":"<終焉の炎霊 ダスク> ","color":"red"},{"text":"諸行無常の万象を伴い、昏き終焉に葬り去り給え！"}]
summon minecraft:armor_stand 0 47 0 {Tags:["this","b3s22meteor"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[0.0f,90.0f]}
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @e[tag=this] remove this
scoreboard players remove @s counter 160
scoreboard players set @s Cooldown1 100
scoreboard players set @s Cooldown2 100
scoreboard players set @s Cooldown3 100
scoreboard players set @s Cooldown4 100
scoreboard players set @s Cooldown5 100
scoreboard players set @s Cooldown7 100
scoreboard players set @s Cooldown8 100
scoreboard players set @s Cooldown9 100

function wancomatter:boss/dusk/skill22/end