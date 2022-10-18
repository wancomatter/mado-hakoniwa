#厳密にはスコア分のタグを召喚時に付与し、タグ判定で分岐していく

execute unless entity @s[tag=211tmp.032] run function wancomatter:skills/023/particle/016
execute if entity @s[tag=211tmp.032] positioned ^ ^ ^3.2 run function wancomatter:skills/023/particle/016