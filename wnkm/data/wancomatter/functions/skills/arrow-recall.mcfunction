#> wancomatter:skills/arrow-recall
execute store result score #dummy dummy run data get entity @s ActiveEffects[{Id:9b}].Duration
scoreboard players add #dummy dummy 1
execute as @a[tag=!hurt,tag=!hurtBy,advancements={wancomatter:general/arrow-dealt2=true}] if score @s playerNumber = #dummy dummy run function wancomatter:skills/arrow-recall_hurtby
execute as @a[tag=hurtBy,scores={Mana=2..}] run scoreboard players remove @s Mana 2
scoreboard players set #dummy dummy 0
execute store result score #dummy dummy run data get entity @s ActiveEffects[{Id:9b}].Amplifier
execute if score #dummy dummy matches 1 run loot give @a[tag=hurtBy] loot wancomatter:skills/arrow/1_stone
execute if score #dummy dummy matches 3 run loot give @a[tag=hurtBy] loot wancomatter:skills/arrow/1_steel
execute if score #dummy dummy matches 4 run loot give @a[tag=hurtBy] loot wancomatter:skills/arrow/1_poison
execute if score #dummy dummy matches 5 run loot give @a[tag=hurtBy] loot wancomatter:skills/arrow/1_seima
execute if score #dummy dummy matches 6 run loot give @a[tag=hurtBy] loot wancomatter:skills/arrow/1_bomb
execute if score #dummy dummy matches 7 run loot give @a[tag=hurtBy] loot wancomatter:skills/arrow/1_star
execute if score #dummy dummy matches 8 if entity @a[tag=hurtBy,limit=1] at @s run function wancomatter:skills/arrow/08/hit
effect clear @s minecraft:nausea
scoreboard players reset #dummy dummy
