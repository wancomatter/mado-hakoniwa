#厳密にはスコア分のタグを召喚時に付与し、タグ判定で分岐していく

execute unless entity @s[tag=211tmp.008] run function wancomatter:skills/023/particle/004
execute if entity @s[tag=211tmp.008] positioned ^ ^ ^0.8 run function wancomatter:skills/023/particle/004