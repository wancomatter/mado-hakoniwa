# 鎖の記録に今回の対象が含まれる場合に解除する。
execute if score @s teamNumber = @e[tag=it,limit=1] teamNumber run tag @s remove bloodchain_hit
