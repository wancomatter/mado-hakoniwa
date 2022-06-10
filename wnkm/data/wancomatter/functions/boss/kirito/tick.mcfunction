#counter     -> とりあえず毎tick増加させるやつ
#subcounter  -> 剣の挙動管理スコア
#subcounter2 -> 剣の挙動の番号スコア
#Mana       -> ボスmaxHPの半分のスコア保存
scoreboard players add @s counter 1
execute store result bossbar minecraft:kirito value run scoreboard players get @s HP

execute if entity @s[scores={Cooldown1=1..}] run scoreboard players remove @s Cooldown1 1
execute if entity @s[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
execute if entity @s[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
execute if entity @s[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @s[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown6=1..}] run scoreboard players remove @s Cooldown6 1
execute if entity @s[scores={Cooldown7=1..}] run scoreboard players remove @s Cooldown7 1
execute if entity @s[scores={Cooldown8=1..}] run scoreboard players remove @s Cooldown8 1
execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1

tp @s @e[tag=kiritostand,limit=1]
execute as @e[tag=kiritostand] at @s run function wancomatter:boss/kirito/actiontick
execute if score @s counter matches 100.. run function wancomatter:boss/kirito/useskill
execute if score @s counter matches 100.. unless score @s HP matches ..8000 run scoreboard players set @s counter -10
execute if score @s counter matches 100.. run scoreboard players set @s counter 0

execute if score @s HP matches ..0 run function wancomatter:boss/kirito/defeat

execute unless entity @s[tag=b2s21used] if score @s HP <= @s Mana run function wancomatter:boss/kirito/skill21/discharge