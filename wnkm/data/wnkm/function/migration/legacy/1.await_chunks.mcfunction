execute in overworld unless loaded -64 64 0 run return fail
execute in overworld unless loaded -64 64 -16 run return fail
execute in overworld unless loaded 32 64 -304 run return fail
execute in overworld unless loaded 320 64 -16 run return fail
execute in overworld unless loaded 256 64 -208 run return fail
execute in overworld unless loaded 256 64 -160 run return fail
# チャンクの読み込みを確認した次のtickに、実体を対象にできる状態で処理する。
execute unless data storage wnkm:version {migration:{ready:1b}} run return run data modify storage wnkm:version migration.ready set value 1b
return run function wnkm:bootstrap/2.initialize_world
