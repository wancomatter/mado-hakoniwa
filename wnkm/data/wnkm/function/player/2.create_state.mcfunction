# 旧初期化と同じ採番・クールダウン初期値でロビーへ戻す。
execute unless score @s playerNumber matches 1.. run scoreboard players add #first-operator counter 1
execute unless score @s playerNumber matches 1.. run scoreboard players operation @s playerNumber = #first-operator counter
scoreboard players set @s Cooldown1 -1
scoreboard players set @s Cooldown2 -1
scoreboard players set @s Cooldown3 -1
scoreboard players set @s Cooldown4 -1
scoreboard players set @s Cooldown5 -1
scoreboard players set @s Cooldown6 -1
scoreboard players set @s Cooldown7 -1
scoreboard players set @s Cooldown8 -1
scoreboard players set @s Cooldown9 -1
scoreboard players set @s CooldownX -1
scoreboard players set @s maxHP 40
scoreboard players set @s HP 40
scoreboard players set @s maxMana 100
scoreboard players set @s Mana 100
scoreboard players set @s cost 0
scoreboard players set @s page 1
gamemode adventure @s
execute in overworld run tp @s 0.5 64 0.5
execute unless score @s playerNumber matches 1.. run return fail
return 1
