#厳密にはスコア分のタグを召喚時に付与し、タグ判定で分岐していく

execute unless entity @s[tag=211tmp.064] run function wancomatter:skills/023/particle/032
execute if entity @s[tag=211tmp.064] positioned ^ ^ ^6.4 run function wancomatter:skills/023/particle/032