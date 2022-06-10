#   #gametime subcounter  -> モニタ設定の保存用(書き換えはモニタのみ)
#   #gametime counter     -> ゲーム時間計測用(毎tick増加)
#   #gametime subcounter2 -> モニタ設定を実際に反映する用(game/gamestartからsubcounter*60を代入)
scoreboard players add #gametime counter 1
execute if score #gametime counter matches 180.. run function wancomatter:game/result/tick
execute if score #gametime counter matches 20..29 run function wancomatter:game/20tick
execute if score #gametime counter matches ..-1 run function wancomatter:game/countdown

execute if score #gamemode counter matches 1 if score #gametime counter matches 0..20 run function wancomatter:game/1_deathmatch

execute if score #gamemode counter matches 4 if score #gametime counter matches 0..20 run function wancomatter:game/4_tdm

execute if score #gamemode counter matches 12 if score #gametime counter matches 0..20 run function wancomatter:game/12_bossbattle
execute unless score #gamemode counter matches 11.. if score #gametime counter matches 0..20 run function wancomatter:game/pvp/tick

execute if score #gametime counter matches ..29 run gamemode spectator @a[gamemode=!spectator,team=]
execute if score #gametime counter matches ..29 run gamemode spectator @a[gamemode=!spectator,team=spectate]
