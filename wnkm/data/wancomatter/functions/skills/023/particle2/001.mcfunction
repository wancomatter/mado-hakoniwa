#厳密にはスコア分のタグを召喚時に付与し、タグ判定で分岐していく

execute unless entity @s[tag=211tmp.001] run function wancomatter:skills/023/particle2/000
execute if entity @s[tag=211tmp.001] positioned ^ ^ ^2.4 run function wancomatter:skills/023/particle2/000