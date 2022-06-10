#スコア処理
scoreboard players operation #- subcounter2 = @s HP

#回復処理
scoreboard players operation @s HP += @s HPheal
scoreboard players operation #- maxHP = @s maxHP
execute if entity @s[type=player] run scoreboard players operation #- maxHP *= #10 counter
execute if score @s HP > #- maxHP run scoreboard players operation @s HP = #- maxHP
execute if entity @e[tag=mobR,scores={HPheal=1..},limit=1] as @e[tag=mobR,scores={HPheal=1..}] store result entity @s Health float 0.1 run scoreboard players get @s HP

#スコア処理
scoreboard players operation #- counter = @s HP

#HPが回復していればインジケーター表示
execute unless score #- counter = #- subcounter2 run function wancomatter:general/hp_heal_show

#後処理
scoreboard players reset #-