# 現在の敵対チームから近い対象を選ぶ。該当者がいない間はその場に留まる。
execute at @s as @a[gamemode=adventure,team=Aqua,sort=nearest,limit=1] run tag @s add target
