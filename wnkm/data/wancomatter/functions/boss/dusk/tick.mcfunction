scoreboard players add @s counter 1
execute store result bossbar minecraft:dusk value run scoreboard players get @s HP

execute if entity @s[scores={Cooldown1=1..}] run scoreboard players remove @s Cooldown1 1
execute if entity @s[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
execute if entity @s[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
execute if entity @s[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @s[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown6=1..}] run scoreboard players remove @s Cooldown6 1
execute if entity @s[scores={Cooldown7=1..}] run scoreboard players remove @s Cooldown7 1
execute if entity @s[scores={Cooldown8=1..}] run scoreboard players remove @s Cooldown8 1
execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1

execute if entity @s[tag=usedskill] run tag @s remove usedskill

execute if entity @s[tag=b3s20] run function wancomatter:boss/dusk/skill20/tick
execute if entity @s[tag=b3s3reset] run function wancomatter:boss/dusk/skill3/motion-reset
execute if entity @s[tag=b3s21] run function wancomatter:boss/dusk/skill21/boss-tick
execute if entity @s[tag=b3s22] run function wancomatter:boss/dusk/skill22/tick2
execute if entity @s[y=0,dy=-30] run function wancomatter:boss/dusk/return
execute if entity @s[tag=b3s21used] if score #difficult counter matches 3..4 unless score @s Cooldown6 matches 1.. run function wancomatter:boss/dusk/skill6/first
execute if entity @s[tag=b3s21used] if score #difficult counter matches 3..4 unless score @s Cooldown4 matches 1.. unless entity @a[scores={maxHP=1..},gamemode=!spectator,distance=..32,limit=1] unless entity @e[tag=b3s0target,limit=1] if entity @a[scores={maxHP=1..},gamemode=!spectator,distance=..99,limit=1] run function wancomatter:boss/dusk/skill0/first
execute if score #difficult counter matches 3..4 unless score @s Cooldown1 matches 1.. if entity @s[tag=b3s21used] if entity @a[distance=12.5..64,tag=damagetaken,limit=1] at @a[distance=12.5..64,tag=damagetaken,limit=1,sort=nearest] run summon area_effect_cloud ~ 7.5 ~ {Duration:2,Tags:["target","b3s1target"]}
execute if entity @e[tag=b3s1target,limit=1] run function wancomatter:boss/dusk/skill1/first

execute if score @s counter matches 100.. run function wancomatter:boss/dusk/useskill
#execute if score @s counter matches 100.. unless entity @s[tag=b3s21used] run scoreboard players set @s counter -10
execute if score @s counter matches 100.. run scoreboard players set @s counter 0




execute if score @s HP matches ..0 run function wancomatter:boss/dusk/defeat

execute unless entity @s[tag=b3s21used] if score @s HP <= @s Mana run function wancomatter:boss/dusk/skill21/first
execute unless entity @s[tag=b3s22used] if score @s HP <= @s maxMana run function wancomatter:boss/dusk/skill22/first