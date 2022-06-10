execute unless entity @s[team=z_spectate] run tag @s add flag
execute unless entity @s[tag=flag] run tellraw @s {"text":"[システム] 観戦を終了します。"}
execute unless entity @s[tag=flag] at @s run particle minecraft:dust 0 0 0 1 ~ ~1 ~ 1 1 1 1 100 force @a
execute unless entity @s[tag=flag] at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1
execute unless entity @s[tag=flag] if score #teamModify counter matches 11 run team join battleroyal @s
execute unless entity @s[tag=flag] if score #teamModify counter matches 11 run tag @s add flag_break
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Red] run scoreboard players add #dummy Cooldown1 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Aqua] run scoreboard players add #dummy Cooldown2 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Yellow] run scoreboard players add #dummy Cooldown3 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Green] run scoreboard players add #dummy Cooldown4 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Purple] run scoreboard players add #dummy Cooldown5 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=White] run scoreboard players add #dummy Cooldown6 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Black] run scoreboard players add #dummy Cooldown7 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Blue] run scoreboard players add #dummy Cooldown8 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Pink] run scoreboard players add #dummy Cooldown9 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Gold] run scoreboard players add #dummy CooldownX 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=Gray] run scoreboard players add #dummy Cooldown1_max 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=DarkRed] run scoreboard players add #dummy Cooldown2_max 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=DarkAqua] run scoreboard players add #dummy Cooldown3_max 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=DarkGreen] run scoreboard players add #dummy Cooldown4_max 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=DarkBlue] run scoreboard players add #dummy Cooldown5_max 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 as @a[team=DarkGray] run scoreboard players add #dummy Cooldown6_max 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players set #dummy counter 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown8
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown3
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown4
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown5
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown6
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown7
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown2
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown9
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy CooldownX
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown1_max
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown2_max
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown3_max
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown4_max
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown5_max
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players operation #dummy counter < #dummy Cooldown6_max
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown1 run scoreboard players set @s teamNumber 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown2 run scoreboard players set @s teamNumber 8
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown3 run scoreboard players set @s teamNumber 3
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown4 run scoreboard players set @s teamNumber 4
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown5 run scoreboard players set @s teamNumber 5
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown6 run scoreboard players set @s teamNumber 6
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown7 run scoreboard players set @s teamNumber 7
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown8 run scoreboard players set @s teamNumber 2
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown9 run scoreboard players set @s teamNumber 9
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy CooldownX run scoreboard players set @s teamNumber 10
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown1_max run scoreboard players set @s teamNumber 11
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown2_max run scoreboard players set @s teamNumber 12
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown3_max run scoreboard players set @s teamNumber 13
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown4_max run scoreboard players set @s teamNumber 14
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown5_max run scoreboard players set @s teamNumber 15
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 if score #dummy counter = #dummy Cooldown6_max run scoreboard players set @s teamNumber 16
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] unless score @s teamNumber matches 1..16 run scoreboard players set @s teamNumber 1
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] run scoreboard players reset #dummy
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 1 run team join Red @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 2 run team join Aqua @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 3 run team join Yellow @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 4 run team join Green @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 5 run team join Purple @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 6 run team join White @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 7 run team join Black @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 8 run team join Blue @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 9 run team join Pink @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 10 run team join Gold @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 11 run team join Gray @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 12 run team join DarkRed @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 13 run team join DarkAqua @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 14 run team join DarkGreen @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 15 run team join DarkBlue @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] if score @s teamNumber matches 16 run team join DarkGray @s
execute unless entity @s[tag=flag] unless entity @s[tag=flag_break] run function wancomatter:general/teamnumber_set

execute if entity @s[tag=flag] at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 1 1 1 1 100 force @a
execute if entity @s[tag=flag] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1
execute if entity @s[tag=flag] run tellraw @s {"text":"[システム] 観戦を選択しました。"}
execute if entity @s[tag=flag] run team join z_spectate @s
tag @s[tag=flag_break] remove flag_break
tag @s[tag=flag] remove flag