summon minecraft:armor_stand ~ ~ ~ {Tags:["useskill"],NoGravity:1b,Marker:1b,Invisible:1b}
execute store result score #dummy counter run data get entity @e[tag=useskill,limit=1] UUID[1] 1
scoreboard players operation #dummy counter %= #8 counter
scoreboard players remove #dummy counter 4
kill @e[tag=useskill]
scoreboard players add @s subcounter 1
execute if score @s subcounter matches 8.. run function wancomatter:boss/dusk/hate_update
#乱数幅:-4～3
execute if entity @s[tag=b1s22] run tag @s add usedskill
#ノーマル以下についての色々処理
#execute if score #difficult counter matches ..2 unless score @s Cooldown3 matches 1.. if entity @a[distance=..8,gamemode=!spectator] run function wancomatter:boss/dusk/skill3/first
#execute if score #difficult counter matches ..2 if score @s HP matches ..2000 unless score @s Cooldown2 matches 1.. unless entity @a[distance=..16,gamemode=!spectator] run function wancomatter:boss/dusk/skill2/first


#第1形態
#execute if entity @s[tag=!b3s21used,scores={subcounter=1}] run function wancomatter:boss/dusk/skill8/first
execute if entity @s[tag=!b3s21used] unless entity @s[tag=usedskill] if score #dummy counter matches 1.. unless score @s Cooldown6 matches 1.. run function wancomatter:boss/dusk/skill6/first
execute if entity @s[tag=!b3s21used] unless entity @s[tag=usedskill] if score #dummy counter matches ..1 unless score @s Cooldown3 matches 1.. if entity @a[gamemode=!spectator,distance=3..16] run function wancomatter:boss/dusk/skill3/first
execute if entity @s[tag=!b3s21used] unless entity @s[tag=usedskill] if score #dummy counter matches -1..2 unless score @s Cooldown2 matches 1.. run function wancomatter:boss/dusk/skill2/first
execute if entity @s[tag=!b3s21used] unless entity @s[tag=usedskill] if score #dummy counter matches -2..-2 if score #difficult counter matches 4 unless score @s Cooldown8 matches 1.. run function wancomatter:boss/dusk/skill8/first
execute if entity @s[tag=!b3s21used] unless entity @s[tag=usedskill] if score #dummy counter matches -4..-1 unless score @s Cooldown1 matches 1.. run function wancomatter:boss/dusk/skill1/first
#第2形態
execute if entity @s[tag=b3s21used,tag=!b3s22used,scores={subcounter=7}] run function wancomatter:boss/dusk/skill20/first
execute if entity @s[tag=b3s21used,tag=!b3s22used] unless entity @s[tag=usedskill] if score #dummy counter matches -2..-1 unless score #difficult counter matches 3..4 unless score @s Cooldown6 matches 1.. run function wancomatter:boss/dusk/skill6/first
execute if entity @s[tag=b3s21used,tag=!b3s22used] unless entity @s[tag=usedskill] if score #dummy counter matches -2..0 unless score @s Cooldown7 matches 1.. run function wancomatter:boss/dusk/skill7/first
execute if entity @s[tag=b3s21used,tag=!b3s22used] unless entity @s[tag=usedskill] if score #dummy counter matches 0.. unless score @s Cooldown2 matches 1.. run function wancomatter:boss/dusk/skill2/first
execute if entity @s[tag=b3s21used,tag=!b3s22used] unless entity @s[tag=usedskill] if score #dummy counter matches -4..-3 unless score @s Cooldown5 matches 1.. run function wancomatter:boss/dusk/skill5/first
#第3形態
execute if entity @s[tag=b3s22used] unless entity @s[tag=usedskill] if score #dummy counter matches 1.. unless score @s Cooldown5 matches 1.. run function wancomatter:boss/dusk/skill5/first
execute if entity @s[tag=b3s22used] unless entity @s[tag=usedskill] if score #dummy counter matches -2..1 unless score @s Cooldown8 matches 1.. run function wancomatter:boss/dusk/skill8/first
execute if entity @s[tag=b3s22used] unless entity @s[tag=usedskill] if score #dummy counter matches -4..-1 if score #difficult counter matches 3..4 unless score @s Cooldown2 matches 1.. run function wancomatter:boss/dusk/skill2/first
execute if entity @s[tag=b3s22used] unless entity @s[tag=usedskill] if score #dummy counter matches -4..-1 unless score #difficult counter matches 3..4 unless score @s Cooldown6 matches 1.. run function wancomatter:boss/dusk/skill6/first
#スキル無使用時の処理
execute if entity @s[tag=!b3s21used] unless entity @s[tag=usedskill] run function wancomatter:boss/dusk/skill0/first
execute if entity @s[tag=b3s21used] unless entity @s[tag=usedskill] unless score @s Cooldown7 matches 1.. run function wancomatter:boss/dusk/skill7/first
execute unless entity @s[tag=usedskill] run function wancomatter:boss/dusk/skill1/first

execute if entity @s[tag=usedskill] run tag @s remove usedskill