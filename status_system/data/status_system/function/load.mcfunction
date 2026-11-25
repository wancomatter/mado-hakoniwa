# 能力値計算用の固定UUIDの防具立てを準備する
execute in status_system: run forceload add -1 -1 0 0
execute in status_system: unless entity 0-0-0-0-1314 run summon armor_stand 0 0 0 {UUID:[I;0,0,0,4884],Marker:1b,Invisible:1b}

# 初期化済みかどうかはストレージに保持する
execute unless data storage status_system: initialized run schedule function status_system:initialize 2t replace
