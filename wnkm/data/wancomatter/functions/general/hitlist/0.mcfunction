#130体に実行してだいたいコマンド数1500
#対応上限は128体
tag @s add hit2
tag @s remove hit1

execute if data entity @e[tag=it,limit=1] data.tmp[0] run function wancomatter:general/hitlist/1
execute if entity @s[tag=hit2] run data modify entity @e[tag=it,limit=1] data.alreadyHitList append from entity @s UUID