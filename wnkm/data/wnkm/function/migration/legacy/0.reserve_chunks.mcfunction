# 原本で旧試合実体が保存されたチャンクを確保し、途中のreloadでも所有記録を保持する。
execute unless data storage wnkm:version migration run data modify storage wnkm:version migration set value {}
data remove storage wnkm:version migration.ready
execute if data storage wnkm:version {migration:{own_0:1b}} in overworld run forceload add -64 0
execute unless data storage wnkm:version {migration:{own_0:1b}} in overworld store success storage wnkm:version migration.own_0 byte 1 run forceload add -64 0
execute if data storage wnkm:version {migration:{own_1:1b}} in overworld run forceload add -64 -16
execute unless data storage wnkm:version {migration:{own_1:1b}} in overworld store success storage wnkm:version migration.own_1 byte 1 run forceload add -64 -16
execute if data storage wnkm:version {migration:{own_2:1b}} in overworld run forceload add 32 -304
execute unless data storage wnkm:version {migration:{own_2:1b}} in overworld store success storage wnkm:version migration.own_2 byte 1 run forceload add 32 -304
execute if data storage wnkm:version {migration:{own_3:1b}} in overworld run forceload add 320 -16
execute unless data storage wnkm:version {migration:{own_3:1b}} in overworld store success storage wnkm:version migration.own_3 byte 1 run forceload add 320 -16
execute if data storage wnkm:version {migration:{own_4:1b}} in overworld run forceload add 256 -208
execute unless data storage wnkm:version {migration:{own_4:1b}} in overworld store success storage wnkm:version migration.own_4 byte 1 run forceload add 256 -208
execute if data storage wnkm:version {migration:{own_5:1b}} in overworld run forceload add 256 -160
execute unless data storage wnkm:version {migration:{own_5:1b}} in overworld store success storage wnkm:version migration.own_5 byte 1 run forceload add 256 -160
return 1
