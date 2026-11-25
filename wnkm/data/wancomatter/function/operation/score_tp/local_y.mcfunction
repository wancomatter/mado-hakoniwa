#> wancomatter:operation/score_tp/local_y
# 実行者:   @s
# 実行地点: @s
# @sのcounter_2に応じた距離だけtp @s ^(counter_2)*0.01 ^ ^します
# @sのcounter_2は0になります

#スコア値がプラスかマイナスかで実行するfunctionを変えるだけ～
execute if score #score_tp counter matches 1.. run function wancomatter:operation/score_tp/local_y1
execute if score #score_tp counter matches ..-1 run function wancomatter:operation/score_tp/local_y2
