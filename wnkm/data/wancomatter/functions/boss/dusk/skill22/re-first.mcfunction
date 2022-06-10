scoreboard players add #dummy dummy 180
scoreboard players set @e[tag=dusk] counter 20
scoreboard players operation @e[tag=dusk] Cooldown1 -= #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown2 -= #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown3 -= #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown4 = #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown5 -= #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown6 -= #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown7 -= #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown8 -= #dummy dummy
scoreboard players operation @e[tag=dusk] Cooldown9 -= #dummy dummy

tag @s add b3s22

tellraw @a ["",{"text":"<終焉の炎霊 ダスク> ","color":"red"},{"text":"我が望むは永久に語り継がれし不滅の光･･････"}]
execute positioned 0 7 0 run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 6 0.8
#playsound minecraft:block.portal.travel master @a 0 -100 0 0 0.5 1
effect give @a minecraft:blindness 1 0 true
#particle minecraft:flash ~ ~1.2 ~ 1 1 1 1 10 force @a
#tp @s 0 10 0
