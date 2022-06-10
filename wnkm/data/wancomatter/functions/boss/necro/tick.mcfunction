#使用objective
#counter(攻撃パターン制御に使用)
#subcounter(攻撃パターン制御の補助に使用)
#Mana(第二形態移行HP保存に使用)
#maxMana(形態番号保存に使用)

scoreboard players operation #necroBoss teamNumber = @s teamNumber
execute if entity @s[tag=usedskill] run tag @s remove usedskill
execute if entity @s[scores={Cooldown1=1..}] run scoreboard players remove @s Cooldown1 1
execute if entity @s[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
execute if entity @s[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
execute if entity @s[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @s[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown8=1..}] run scoreboard players remove @s Cooldown8 1
execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1

execute if data entity @s ActiveEffects[{Id:24}] run effect clear @s minecraft:glowing
tp @e[tag=necro_stand] ~ ~ ~ ~ ~
execute store result bossbar minecraft:necro value run scoreboard players get @s HP

execute if score @s HP matches ..0 run function wancomatter:boss/necro/defeat

#Cooldown1_max: 通常攻撃の制御に使用
execute if entity @s[scores={Cooldown1_max=1},tag=necro_s0NoUsing] run tag @s remove necro_s0NoUsing
execute if entity @s[scores={Cooldown1_max=1..}] run scoreboard players remove @s Cooldown1_max 1
execute if entity @s[scores={Cooldown1_max=1..},tag=!necro_s0NoUsing] run function wancomatter:boss/necro/skill0/1
#Cooldown6～: DarknessOverloadの制御に使用
execute if entity @s[scores={Cooldown6=1..}] run function wancomatter:boss/necro/skill6/1
#Cooldown9_max: 強攻撃の制御に使用
execute if entity @s[scores={Cooldown9_max=1..}] run function wancomatter:boss/necro/skill9/1

execute if score @s maxMana matches 1 if score @s HP <= @s Mana run function wancomatter:boss/necro/phase1_next
execute if score @s maxMana matches 1 run function wancomatter:boss/necro/phase1

execute if score @s maxMana matches 2 if score @s HP <= @s Mana run function wancomatter:boss/necro/phase2_next
execute if score @s maxMana matches 2 run function wancomatter:boss/necro/phase2

execute if score @s maxMana matches 3 run function wancomatter:boss/necro/phase3