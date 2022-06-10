#> wancomatter:operation/score_tp/local_x
# 実行者:   @s
# 実行地点: @s
# @sのcounter_1に応じた距離だけtp @s ^(counter_1)*0.01 ^ ^します
# @sのcounter_1は0になります

#スコア値がプラスかマイナスかで実行するfunctionを変えるだけ～
execute if score #score_tp counter matches 1.. run function wancomatter:operation/score_tp/local_x1
execute if score #score_tp counter matches ..-1 run function wancomatter:operation/score_tp/local_x2
