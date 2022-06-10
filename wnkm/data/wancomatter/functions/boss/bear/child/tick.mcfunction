scoreboard players add @s counter 1
execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1
execute store result bossbar minecraft:bear_c value run scoreboard players get @s HP

execute if entity @s[scores={Cooldown1=1..}] run scoreboard players remove @s Cooldown1 1
#execute if entity @s[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
#execute if entity @s[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
#execute if entity @s[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @s[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown6=1..}] run scoreboard players remove @s Cooldown6 1
execute if entity @s[scores={Cooldown7=1..}] run scoreboard players remove @s Cooldown7 1
execute if entity @s[scores={Cooldown8=1..}] run scoreboard players remove @s Cooldown8 1
execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1



execute if entity @s[tag=usedskill] run tag @s remove usedskill

scoreboard players operation #dummy boss_hate > @a[scores={maxHP=1..}] boss_hate
execute as @a[scores={maxHP=1..}] if score @s boss_hate = #dummy boss_hate facing entity @s feet run tag @s add must_target
execute if entity @a[tag=must_target,limit=1] unless score @s Cooldown7_max matches 32.. unless entity @a[tag=must_target,distance=..8,limit=1] run scoreboard players add @s Cooldown7_max 2
execute if score @s Cooldown7_max matches 1.. run scoreboard players remove @s Cooldown7_max 1
execute unless score @s Cooldown7 matches 1.. if score @s Cooldown7_max matches 31.. run function wancomatter:boss/bear/child/skill7/charge
execute if entity @e[tag=must_target,limit=1] run tag @e[tag=must_target] remove must_target

execute unless score @s Cooldown8_max matches 61.. if entity @a[scores={maxHP=1..},distance=..5,limit=1] run scoreboard players add @s Cooldown8_max 2
execute if score @s Cooldown8_max matches 1.. run scoreboard players remove @s Cooldown8_max 1
execute unless score @s Cooldown8 matches 1.. if score @s Cooldown8_max matches 60.. run function wancomatter:boss/bear/child/skill8/first


execute unless score @s Cooldown1 matches 1.. run function wancomatter:boss/bear/child/skill1/first
execute if score @s Cooldown1_max matches 1.. run function wancomatter:boss/bear/child/skill1/boss_tp
execute unless score @s Cooldown5 matches 1.. run function wancomatter:boss/bear/child/skill5/first
execute unless score @s Cooldown6 matches 1.. run function wancomatter:boss/bear/child/skill6/first

execute if entity @s[tag=!bear_s20_used,scores={Mana=1..}] if score #difficult counter matches 2..4 if score @s Mana > @s HP run function wancomatter:boss/bear/child/skill20/first
execute if score @s HP matches ..0 run function wancomatter:boss/bear/child/defeat

