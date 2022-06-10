#使用objective: Cooldown7～9, Cooldown1～9_max, counter(攻撃制御に使用), subcounter(攻撃番号に使用), subcounter2(アマスタ角度の正常描画に使用)
#Mana(必殺技発動HP保存に使用), sneak(歩行アニメーションに使用)

execute store result bossbar minecraft:arctic value run scoreboard players get @s HP

execute if entity @s[scores={Cooldown1=1..}] run scoreboard players remove @s Cooldown1 1
execute if entity @s[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
execute if entity @s[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
execute if entity @s[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @s[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown6=1..}] run scoreboard players remove @s Cooldown6 1

execute if entity @s[tag=usedskill] run tag @s remove usedskill

execute if entity @s[scores={counter=1..}] run scoreboard players remove @s counter 1
execute if entity @s[scores={counter=1..}] if score @s subcounter matches 1 run function wancomatter:boss/arctic/1/tick

execute if entity @s[scores={subcounter2=7}] rotated as @e[tag=arctic_stand] run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={subcounter2=7}] at @s run tp @e[tag=arctic_stand,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[scores={subcounter2=1}] rotated as @e[tag=arctic_stand] run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={subcounter2=1}] at @s run tp @e[tag=arctic_stand,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[scores={subcounter2=1..}] run scoreboard players remove @s subcounter2 1
execute unless entity @s[scores={subcounter2=1..}] run tp @e[tag=arctic_stand,limit=1,sort=nearest] ~ ~ ~

execute if score @s HP matches ..0 run function wancomatter:boss/arctic/defeat

execute unless entity @s[tag=b4s21used] if score @s HP <= @s Mana run function wancomatter:boss/arctic/21/first