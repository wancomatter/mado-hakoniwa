
# 真紅の傷跡の敵は、開始位置の正面に出現する。
execute if score #wave wnkm.wave matches 1 run title @a[team=Aqua] subtitle {text:"第1ウェーブ",color:"gold"}
execute if score #wave wnkm.wave matches 2 run title @a[team=Aqua] subtitle {text:"第2ウェーブ",color:"gold"}
execute if score #wave wnkm.wave matches 3 run title @a[team=Aqua] subtitle {text:"最終ウェーブ",color:"gold"}
title @a[team=Aqua] title {text:"真紅の傷跡",color:"dark_red"}
execute if score #wave wnkm.wave matches 1 run summon husk -4 8 22 {Tags:["wnkm.owned","wnkm.round","wnkm.wave_enemy","mob","mobInit"],Team:"Enemy",PersistenceRequired:1b,AbsorptionAmount:180.0f}
execute if score #wave wnkm.wave matches 1 run summon husk 4 8 22 {Tags:["wnkm.owned","wnkm.round","wnkm.wave_enemy","mob","mobInit"],Team:"Enemy",PersistenceRequired:1b,AbsorptionAmount:180.0f}
execute if score #wave wnkm.wave matches 2 run summon stray -5 8 20 {Tags:["wnkm.owned","wnkm.round","wnkm.wave_enemy","mob","mobInit"],Team:"Enemy",PersistenceRequired:1b,AbsorptionAmount:200.0f,equipment:{mainhand:{id:"minecraft:bow",count:1}}}
execute if score #wave wnkm.wave matches 2 run summon stray 5 8 20 {Tags:["wnkm.owned","wnkm.round","wnkm.wave_enemy","mob","mobInit"],Team:"Enemy",PersistenceRequired:1b,AbsorptionAmount:200.0f,equipment:{mainhand:{id:"minecraft:bow",count:1}}}
execute if score #wave wnkm.wave matches 2 run summon husk 0 8 23 {Tags:["wnkm.owned","wnkm.round","wnkm.wave_enemy","mob","mobInit"],Team:"Enemy",PersistenceRequired:1b,AbsorptionAmount:260.0f}
execute if score #wave wnkm.wave matches 3 run summon ravager 0 8 22 {Tags:["wnkm.owned","wnkm.round","wnkm.wave_enemy","mob","mobInit"],Team:"Enemy",PersistenceRequired:1b,AbsorptionAmount:700.0f}
execute if score #wave wnkm.wave matches 3 run summon husk -5 8 23 {Tags:["wnkm.owned","wnkm.round","wnkm.wave_enemy","mob","mobInit"],Team:"Enemy",PersistenceRequired:1b,AbsorptionAmount:260.0f}
execute if score #wave wnkm.wave matches 3 run summon husk 5 8 23 {Tags:["wnkm.owned","wnkm.round","wnkm.wave_enemy","mob","mobInit"],Team:"Enemy",PersistenceRequired:1b,AbsorptionAmount:260.0f}
execute as @e[tag=wnkm.wave_enemy,tag=mobInit] at @s run function wancomatter:general/mob-initialize
team join Enemy @e[tag=wnkm.wave_enemy]
scoreboard players set @e[tag=wnkm.wave_enemy] teamNumber 18
return 1
