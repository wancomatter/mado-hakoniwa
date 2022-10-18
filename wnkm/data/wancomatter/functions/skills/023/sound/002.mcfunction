#厳密にはスコア分のタグを召喚時に付与し、タグ判定で分岐していく

execute unless entity @s[tag=211tmp.002] run function wancomatter:skills/023/sound/001
execute if entity @s[tag=211tmp.002] positioned ^ ^ ^4.8 run function wancomatter:skills/023/sound/001