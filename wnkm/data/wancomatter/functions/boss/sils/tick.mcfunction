#counter     -> スキルの時間管理用
#dummy       -> スキルの種類制御用
#Mana        -> 第二形態化HP保存用
#subcounter  -> 翼制御用
#subcounter2 -> 
# ・
# ・
#Cooldown4~9  -> Pose制御用
#Cooldown_max -> Pose制御用
tp @e[tag=sils_hitbox,limit=1,sort=nearest] @s
execute as @e[tag=sils_feather,limit=1,sort=nearest] run tp @s ^ ^ ^-0.1 ~ ~
execute store result bossbar minecraft:sils value run scoreboard players get @s HP
execute if entity @s[scores={Cooldown7_max=1..}] run function wancomatter:boss/sils/pose

#execute unless entity @s[scores={counter=1..}] run function wancomatter:boss/sils/tick_change
execute if entity @s[scores={counter=1..}] run scoreboard players remove @s counter 1
execute if entity @s[scores={counter=1..}] if score @s dummy matches 1 run function wancomatter:boss/sils/sword/tick
execute if entity @s[scores={counter=1..}] if score @s dummy matches 2 run function wancomatter:boss/sils/bow/tick
execute if entity @s[scores={counter=1..}] if score @s dummy matches 3 run function wancomatter:boss/sils/trident/tick
execute if entity @s[scores={counter=1..}] if score @s dummy matches 4 run function wancomatter:boss/sils/axe/tick
execute if entity @s[scores={counter=1..}] if score @s dummy matches 5 run function wancomatter:boss/sils/pot/tick
execute if entity @s[scores={counter=1..}] if score @s dummy matches 6 run function wancomatter:boss/sils/head/tick

execute if entity @s[scores={subcounter=1..}] run function wancomatter:boss/sils/feather/tick


execute if score @s HP matches ..0 run function wancomatter:boss/sils/defeat

