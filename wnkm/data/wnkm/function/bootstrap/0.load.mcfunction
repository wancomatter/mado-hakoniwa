# 箱庭の旧版だけを移行する。新しい版や不明な保存形式は書き換えない。
execute if data storage wnkm:version {world:1} run return 1
execute if data storage wnkm:version world unless data storage wnkm:version {world:0} run return fail
execute if data storage wnkm:version migration run return run function wnkm:migration/legacy/0.reserve_chunks

# 既存の保存ワールドでは、旧試合の実体が保存されたチャンクを先に読み込む。
execute if score #lobby counter matches -2147483648.. run return run function wnkm:migration/legacy/0.reserve_chunks
execute if score #game counter matches -2147483648.. run return run function wnkm:migration/legacy/0.reserve_chunks
execute if data storage wnkm:boss pose run return run function wnkm:migration/legacy/0.reserve_chunks
return run function wnkm:bootstrap/2.initialize_world
