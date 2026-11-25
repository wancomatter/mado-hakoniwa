particle minecraft:end_rod ^ ^0.75 ^40 0 1.2 0 0 5 force @a
particle minecraft:end_rod ^ ^0.75 ^-40 0 1.2 0 0 5 force @a
particle minecraft:end_rod ^40 ^0.75 ^ 0 1.2 0 0 5 force @a
particle minecraft:end_rod ^-40 ^0.75 ^ 0 1.2 0 0 5 force @a
particle minecraft:end_rod ^28.284271247461900976033774484194 ^0.75 ^28.284271247461900976033774484194 0 1.2 0 0 5 force @a
particle minecraft:end_rod ^-28.284271247461900976033774484194 ^0.75 ^28.284271247461900976033774484194 0 1.2 0 0 5 force @a
particle minecraft:end_rod ^-28.284271247461900976033774484194 ^0.75 ^-28.284271247461900976033774484194 0 1.2 0 0 5 force @a
particle minecraft:end_rod ^28.284271247461900976033774484194 ^0.75 ^-28.284271247461900976033774484194 0 1.2 0 0 5 force @a
particle minecraft:happy_villager ~ ~ ~ 33 1 33 1 30 normal @a
tp @s ~ ~ ~ ~1 0

scoreboard players operation #dummy teamNumber = @s teamNumber
scoreboard players operation #dummy healPower = @a[tag=this,limit=1] healPower
scoreboard players add @s subcounter 1
execute if score @s subcounter matches 10 run scoreboard players remove @a[tag=this] Mana 1
execute if score @s subcounter matches 20.. run scoreboard players remove @a[tag=this] Mana 1
execute if score @s subcounter matches 20.. at @s as @e[distance=..40,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber run tag @s add heal-hit
execute if score @s subcounter matches 20.. if entity @e[tag=heal-hit,limit=1] run scoreboard players set #dummy HPheal 15
execute if score @s subcounter matches 20.. if entity @e[tag=heal-hit,limit=1] run scoreboard players operation #dummy HPheal *= #dummy healPower
execute if score @s subcounter matches 20.. if entity @e[tag=heal-hit,limit=1] run scoreboard players operation #dummy HPheal /= #100 counter
execute if score @s subcounter matches 20.. if entity @e[tag=heal-hit,limit=1] as @e[tag=heal-hit] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @e[tag=heal-hit,limit=1] run tag @e[tag=heal-hit] remove heal-hit
execute if score @s subcounter matches 20.. run scoreboard players set @s subcounter 0
