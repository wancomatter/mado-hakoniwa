execute positioned ~ ~0.3 ~ rotated ~ 0 positioned ^ ^ ^0.3 run function wancomatter:skills/061/slash_tp
scoreboard players remove @s Mana 9
scoreboard players set #dummy CooldownX 70
scoreboard players operation #dummy CooldownX *= @s statCTAmount
scoreboard players operation #dummy CooldownX /= #1000 counter

execute store result score #dummy dummy run data get entity @s SelectedItem.tag.usedSkillSlot
execute if score #dummy dummy matches 0 run scoreboard players operation @s Cooldown1 += #dummy CooldownX
execute if score #dummy dummy matches 0 run scoreboard players operation @s Cooldown1_max += #dummy CooldownX
execute if score #dummy dummy matches 1 run scoreboard players operation @s Cooldown2 += #dummy CooldownX
execute if score #dummy dummy matches 1 run scoreboard players operation @s Cooldown2_max += #dummy CooldownX
execute if score #dummy dummy matches 2 run scoreboard players operation @s Cooldown3 += #dummy CooldownX
execute if score #dummy dummy matches 2 run scoreboard players operation @s Cooldown3_max += #dummy CooldownX
execute if score #dummy dummy matches 3 run scoreboard players operation @s Cooldown4 += #dummy CooldownX
execute if score #dummy dummy matches 3 run scoreboard players operation @s Cooldown4_max += #dummy CooldownX
execute if score #dummy dummy matches 4 run scoreboard players operation @s Cooldown5 += #dummy CooldownX
execute if score #dummy dummy matches 4 run scoreboard players operation @s Cooldown5_max += #dummy CooldownX
execute if score #dummy dummy matches 5 run scoreboard players operation @s Cooldown6 += #dummy CooldownX
execute if score #dummy dummy matches 5 run scoreboard players operation @s Cooldown6_max += #dummy CooldownX
execute if score #dummy dummy matches 6 run scoreboard players operation @s Cooldown7 += #dummy CooldownX
execute if score #dummy dummy matches 6 run scoreboard players operation @s Cooldown7_max += #dummy CooldownX
execute if score #dummy dummy matches 7 run scoreboard players operation @s Cooldown8 += #dummy CooldownX
execute if score #dummy dummy matches 7 run scoreboard players operation @s Cooldown8_max += #dummy CooldownX
execute if score #dummy dummy matches 8 run scoreboard players operation @s Cooldown9 += #dummy CooldownX
execute if score #dummy dummy matches 8 run scoreboard players operation @s Cooldown9_max += #dummy CooldownX

playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^2.5 1 1.6
playsound minecraft:entity.lightning_bolt.thunder master @a ^ ^ ^2.5 1 1.6
playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2.5 1.2 0.5
playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2.5 1.2 0.5

execute at @s positioned ~ ~0.4 ~ rotated ~90 ~ run function wancomatter:skills/061/slash_loop
scoreboard players reset #dummy
execute if entity @e[tag=hit2,limit=1] run function wancomatter:skills/061/hit-entity-2
tag @e[tag=hitx] remove hitx
kill @e[tag=to_tp]
