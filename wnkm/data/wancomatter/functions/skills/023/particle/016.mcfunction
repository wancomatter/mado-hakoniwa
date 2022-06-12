#厳密にはスコア分のタグを召喚時に付与し、タグ判定で分岐していく

execute unless entity @s[tag=211tmp.016] run function wancomatter:skills/023/particle/008
execute if entity @s[tag=211tmp.016] positioned ^ ^ ^1.6 run function wancomatter:skills/023/particle/008