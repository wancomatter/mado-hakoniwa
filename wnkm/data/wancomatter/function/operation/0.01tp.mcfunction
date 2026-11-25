# 実行者、実行地点は共にtpするエンティティ
# 距離スコアの入力は@s dummy(0.01刻み)
# 距離は前方20.47ブロックまで対応

execute if score @s dummy matches 4096.. at @s run tp @s ^ ^ ^40.96
execute if score @s dummy matches 4096.. run scoreboard players remove @s dummy 4096
execute if score @s dummy matches 2048.. at @s run tp @s ^ ^ ^20.48
execute if score @s dummy matches 2048.. run scoreboard players remove @s dummy 2048
execute if score @s dummy matches 1024.. at @s run tp @s ^ ^ ^10.24
execute if score @s dummy matches 1024.. run scoreboard players remove @s dummy 1024
execute if score @s dummy matches 512.. at @s run tp @s ^ ^ ^5.12
execute if score @s dummy matches 512.. run scoreboard players remove @s dummy 512
execute if score @s dummy matches 256.. at @s run tp @s ^ ^ ^2.56
execute if score @s dummy matches 256.. run scoreboard players remove @s dummy 256
execute if score @s dummy matches 128.. at @s run tp @s ^ ^ ^1.28
execute if score @s dummy matches 128.. run scoreboard players remove @s dummy 128
execute if score @s dummy matches 64.. at @s run tp @s ^ ^ ^0.64
execute if score @s dummy matches 64.. run scoreboard players remove @s dummy 64
execute if score @s dummy matches 32.. at @s run tp @s ^ ^ ^0.32
execute if score @s dummy matches 32.. run scoreboard players remove @s dummy 32
execute if score @s dummy matches 16.. at @s run tp @s ^ ^ ^0.16
execute if score @s dummy matches 16.. run scoreboard players remove @s dummy 16
execute if score @s dummy matches 8.. at @s run tp @s ^ ^ ^0.08
execute if score @s dummy matches 8.. run scoreboard players remove @s dummy 8
execute if score @s dummy matches 4.. at @s run tp @s ^ ^ ^0.04
execute if score @s dummy matches 4.. run scoreboard players remove @s dummy 4
execute if score @s dummy matches 2.. at @s run tp @s ^ ^ ^0.02
execute if score @s dummy matches 2.. run scoreboard players remove @s dummy 2
execute if score @s dummy matches 1.. at @s run tp @s ^ ^ ^0.01
execute if score @s dummy matches 1.. run scoreboard players remove @s dummy 1
