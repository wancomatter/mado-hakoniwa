# 中間積の整数オーバーフローを避けるため、属性で乗算する。
execute store result storage status_system: calc.addition double 0.000001 run scoreboard players get #Status.TotalCalc.Amount StatusSystem
execute store result storage status_system: calc.multiply double 0.01 run scoreboard players remove #Status.TotalCalc.Multiply StatusSystem 100
function status_system:core/total/calc/big_amount/macro with storage status_system: calc
execute store result score #Status.TotalCalc.Amount StatusSystem run attribute 0-0-0-0-1314 waypoint_transmit_range get 1000000

attribute 0-0-0-0-1314 waypoint_transmit_range modifier remove status_calc
attribute 0-0-0-0-1314 waypoint_transmit_range base set 0
data remove storage status_system: calc
