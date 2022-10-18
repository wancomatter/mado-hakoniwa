scoreboard players set @s damageTaken 0
scoreboard players set @s instantDMGshield 100
scoreboard players set @s instantDMGS_time 30
tag @s remove p.blood_chain

execute unless entity @e[tag=077pos,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["077pos"],Duration:1}
execute facing entity @e[tag=hurtBy,limit=1] feet positioned as @e[tag=hurtBy,limit=1] run tp @e[tag=077pos] ~ ~ ~ ~ ~
execute as @e[tag=077pos] at @s positioned ~ ~0.6 ~ run function wancomatter:skills/077/tp_loop
tp @s @e[tag=077pos,limit=1,sort=nearest]
tag @s add parry_antikb

execute at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1.3 2
particle item redstone ~ ~1 ~ 0.2 0.2 0.2 0.5 120 normal @a
particle item redstone ~ ~1 ~ 0.2 0.2 0.2 0.5 30 force @a
execute at @s run particle item redstone ~ ~1 ~ 0.2 0.2 0.2 0.5 120 normal @a
execute at @s run particle item redstone ~ ~1 ~ 0.2 0.2 0.2 0.5 30 force @a
