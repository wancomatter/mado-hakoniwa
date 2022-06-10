summon minecraft:armor_stand ~ ~ ~ {Tags:["useskill"],NoGravity:1b,Marker:1b,Invisible:1b}
execute store result score #dummy counter run data get entity @e[tag=useskill,limit=1] UUID[1] 1
scoreboard players operation #dummy counter %= #8 counter
scoreboard players remove #dummy counter 4
kill @e[tag=useskill]
scoreboard players add @s subcounter 1
execute if score @s subcounter matches 6 run function wancomatter:boss/detonator/hate_update
execute if score @s subcounter matches 12.. run function wancomatter:boss/detonator/hate_update
#乱数幅:-4～3
execute if entity @s[tag=b1s22] run tag @s add usedskill
#ノーマル以下についての色々処理
#execute if score #difficult counter matches ..2 unless score @s Cooldown3 matches 1.. if entity @a[distance=..8,gamemode=!spectator] run function wancomatter:boss/detonator/skill3/discharge
#execute if score #difficult counter matches ..2 if score @s HP matches ..2000 unless score @s Cooldown2 matches 1.. unless entity @a[distance=..16,gamemode=!spectator] run function wancomatter:boss/detonator/skill2/discharge


#第1形態
execute if score @s HP > @s Mana unless entity @s[tag=usedskill] if score #dummy counter matches 1.. unless score @s Cooldown1 matches 1.. run function wancomatter:boss/detonator/skill1/discharge
execute if score @s HP > @s Mana unless entity @s[tag=usedskill] if score #dummy counter matches -1..0 unless score @s Cooldown7 matches 1.. if entity @a[gamemode=!spectator,distance=..8] run function wancomatter:boss/detonator/skill7/discharge
execute if score @s HP > @s Mana unless entity @s[tag=usedskill] if score #dummy counter matches -1..0 unless score @s Cooldown2 matches 1.. unless entity @a[gamemode=!spectator,distance=..8] run function wancomatter:boss/detonator/skill2/discharge
execute if score @s HP > @s Mana unless entity @s[tag=usedskill] if score #dummy counter matches -4..-2 unless score @s Cooldown8 matches 1.. if entity @a[gamemode=!spectator,distance=..10] run function wancomatter:boss/detonator/skill8/discharge
execute if score @s HP > @s Mana unless entity @s[tag=usedskill] if score #dummy counter matches -4..-2 unless score @s Cooldown9 matches 1.. unless entity @a[gamemode=!spectator,distance=..10] run function wancomatter:boss/detonator/skill9/3
#第2形態
execute if score @s HP <= @s Mana if score @s HP > @s maxMana unless entity @s[tag=usedskill] if score #dummy counter matches 0.. unless score @s Cooldown1 matches 1.. run function wancomatter:boss/detonator/skill1/discharge
execute if score @s HP <= @s Mana if score @s HP > @s maxMana unless entity @s[tag=usedskill] if score #dummy counter matches -2..-1 unless score @s Cooldown4 matches 1.. run function wancomatter:boss/detonator/skill4/discharge
execute if score @s HP <= @s Mana if score @s HP > @s maxMana unless entity @s[tag=usedskill] if score #dummy counter matches -4..-3 unless score @s Cooldown5 matches 1.. run function wancomatter:boss/detonator/skill5/discharge
#第3形態
execute if score @s HP <= @s maxMana unless entity @s[tag=usedskill] if score #dummy counter matches 0.. unless score @s Cooldown5 matches 1.. run function wancomatter:boss/detonator/skill5/discharge
execute if score @s HP <= @s maxMana unless entity @s[tag=usedskill] if score #dummy counter matches -3..-1 unless score @s Cooldown7 matches 1.. if score #difficult counter matches 3.. run function wancomatter:boss/detonator/skill7/discharge
execute if score @s HP <= @s maxMana unless entity @s[tag=usedskill] if score #dummy counter matches -3..-1 unless score @s Cooldown6 matches 1.. run function wancomatter:boss/detonator/skill6/discharge
#スキル無使用時の処理
execute if score @s HP <= @s Mana if score @s HP > @s maxMana unless entity @s[tag=usedskill] unless score @s Cooldown7 matches 1.. run function wancomatter:boss/detonator/skill7/discharge
execute if score @s HP > @s maxMana unless entity @s[tag=usedskill] run function wancomatter:boss/detonator/skill0
execute if score @s HP <= @s maxMana unless entity @s[tag=usedskill] run function wancomatter:boss/detonator/skill1/discharge

execute if entity @s[tag=usedskill] run tag @s remove usedskill