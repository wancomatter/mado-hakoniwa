#
#subcounter2 -> ステージ番号(鉱山=3)
#
#

execute unless entity @s[team=z_spectate] if entity @e[tag=1on1_entry,limit=1] as @e[tag=1on1_entry] if score @s subcounter2 matches 3 run tag @s add flag
execute unless entity @s[team=z_spectate] unless entity @e[tag=1on1_entry,tag=flag,limit=1] run function wancomatter:game/1on1/entry
execute if entity @e[tag=1on1_entry,tag=flag,limit=1] if score @s playerNumber = @e[tag=1on1_entry,tag=flag,limit=1] playerNumber run function wancomatter:game/1on1/entry_cancel
execute if entity @e[tag=1on1_entry,tag=flag,limit=1] unless score @s playerNumber = @e[tag=1on1_entry,tag=flag,limit=1] playerNumber run function wancomatter:game/1on1/entry_2nd

execute if entity @s[team=z_spectate] run tellraw @s ["",{"text":"[1on1]","color":"gold"},{"text":" 観戦者は1on1に参加出来ません"}]

scoreboard players set @e[tag=this_1on1] subcounter2 3
tag @e[tag=this_1on1] remove this_1on1