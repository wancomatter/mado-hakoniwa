execute if data storage wnkm:version world unless data storage wnkm:version {world:0} unless data storage wnkm:version {world:1} run return fail
execute if data storage wnkm:version migration unless data storage wnkm:version {world:1} run function wnkm:migration/legacy/1.await_chunks
execute unless data storage wnkm:version {world:1} run return fail

# 既存のログイン検知と同じ入口で、未処理のプレイヤーを通常処理より先に初期化する。
execute as @a unless score @s wnkm.schema matches 1.. run function wnkm:player/0.initialize

function wnkm:equipment/0.tick
