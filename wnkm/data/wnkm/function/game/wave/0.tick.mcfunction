
# 出撃者の残機と、今回のウェーブに所属する敵だけを監視する。
execute store result score 残り人数 info if entity @a[team=Aqua,scores={lifestock=1..}]
execute unless score 残り人数 info matches 1.. run return run function wancomatter:game/win/lose
execute if entity @e[tag=wnkm.wave_enemy,limit=1] run return 0
execute if score #wave wnkm.wave matches 3 run return run function wancomatter:game/win/pve
scoreboard players add #wave wnkm.wave 1
return run function wnkm:game/wave/1.spawn
