# 共通基盤の導入済みワールドにも追加の目標を一度だけ作る。
execute if data storage wnkm:version {content:1} run return 1
scoreboard objectives add wnkm.wave dummy
scoreboard objectives add wnkm.catalog dummy
team add Enemy
team modify Enemy friendlyFire false
team modify Enemy color red
team add white
team modify white friendlyFire false
team modify white color white
execute in overworld run forceload add 1024 1024
data modify storage wnkm:version content set value 1
scoreboard players add #stagechangeing counter 0
return 1
