scoreboard players set #dummy boss_hate -1
scoreboard players operation #dummy boss_hate > @a[tag=target] boss_hate
execute as @a[tag=target] if score @s boss_hate = #dummy boss_hate facing entity @s feet run function wancomatter:boss/bear/papa/skill4/loop-shot
scoreboard players add #dummy counter 1
execute if entity @a[tag=target,limit=1] unless score #dummy counter matches 10.. run function wancomatter:boss/bear/papa/skill4/loop