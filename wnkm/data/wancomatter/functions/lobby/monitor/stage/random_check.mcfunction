scoreboard players set #randomSwitch counter -1
execute if score #randomSwitch Cooldown1 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch Cooldown2 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch Cooldown3 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch Cooldown4 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch Cooldown5 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch Cooldown6 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch Cooldown7 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch Cooldown8 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch Cooldown9 matches 1 run scoreboard players remove #randomSwitch counter 1
execute if score #randomSwitch counter matches -2..-1 run tellraw @s {"text":"[システム] ランダム設定から2種類以上のステージを選択してください。","color":"red"}
execute unless score #randomSwitch counter matches -2..-1 run scoreboard players set #stagechanged counter 2
execute unless score #randomSwitch counter matches -2..-1 run function wancomatter:lobby/monitor/stage/random
