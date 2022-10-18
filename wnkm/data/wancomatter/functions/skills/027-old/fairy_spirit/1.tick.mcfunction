# 毎tickスコア増加
scoreboard players add @s counter 1
execute unless score @s Cooldown4 matches 100.. run scoreboard players add @s Cooldown4 1

# NoAI:1bを0bにするカウント
execute if score @s Cooldown1 matches 1.. run function wancomatter:skills/027/fairy_spirit/noai


execute if score @s counter matches 10 if score @s Cooldown4 matches 100.. run function wancomatter:skills/027/fairy_spirit/2.search_enemy

# 行動パターンの最後に使用
# 召喚者を検知してBoundXYZを設定し直す
execute if score @s counter matches 20.. run function wancomatter:skills/027/fairy_spirit/search_owner_pos
