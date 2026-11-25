# 初回移行が自分で予約したチャンクだけを解放する。
execute if data storage wnkm:version {migration:{own_0:1b}} in overworld run forceload remove -64 0
execute if data storage wnkm:version {migration:{own_1:1b}} in overworld run forceload remove -64 -16
execute if data storage wnkm:version {migration:{own_2:1b}} in overworld run forceload remove 32 -304
execute if data storage wnkm:version {migration:{own_3:1b}} in overworld run forceload remove 320 -16
execute if data storage wnkm:version {migration:{own_4:1b}} in overworld run forceload remove 256 -208
execute if data storage wnkm:version {migration:{own_5:1b}} in overworld run forceload remove 256 -160
