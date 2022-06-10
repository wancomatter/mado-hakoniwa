#@s subcounter  -> 何分にするかとかそういうやつ
#@s counter     -> ゲーム時間計測用(毎tick増加)
#@s subcounter2 -> 残り時間(秒)を実際に反映する用(game/1on1/gamestartからsubcounter*60を代入)
#@s dummy       -> 何処のステージでやってるかの情報保存用
scoreboard players add @s counter 1
execute if score @s counter matches 20..29 run function wancomatter:game/1on1/game/20tick
execute if score @s counter matches ..-1 run function wancomatter:game/1on1/game/countdown

execute if score #gamemode counter matches 10 if score @s counter matches 0..20 run function wancomatter:game/3_1on1

