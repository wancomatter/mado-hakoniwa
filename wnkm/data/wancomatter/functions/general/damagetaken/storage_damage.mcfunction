#> wancomatter:general/damagetaken/storage_damage
## 引数を設定
# data merge storage wnkm:storage_damage {Damage:<float>,WeaponNumber:<int>,attackerPlayerNumber:<int>,DamageType:0b/1b/2b,isMultiDamage:0b/1b,isKnockbackDamage:0b/1b}
# 対象を実行者にしてfunctionを実行
# execute as 対象 run function wancomatter:general/damagetaken/storage_damage
########################################################################
## Damage: 与える基礎ダメージ。小数1桁目まで入力。
##  例 23.4f: 基礎ダメージが23.4に設定され、ここから物理ダメージ補正や魔法ダメージ補正などが乗ってくる。
##
## attackerPlayerNumber: 攻撃者のplayerNumber。
##  例 13: playerNumber13のエンティティが攻撃した判定になる
##
## DamageType: ダメージの種類。
##     0b: 物理ダメージ
##     1b: 魔法ダメージ
##     2b: 貫通ダメージ
##
## isMultiDamage: 無敵時間を貫通してダメージを通すかどうか。
##     0b: 貫通しない
##     1b: 貫通する
##
## isKnockbackDamage: ダメージのノックバックの有無。
##     0b: なし
##     1b: あり
##
########################################################################

#必須の引数をチェック、不足値があれば管理者にエラーを吐く
execute unless data storage wnkm:storage_damage Damage run tellraw @a[tag=op] ["",{"text":"[ERROR] storage_damage: Damage未入力","color":"red"}]
execute unless data storage wnkm:storage_damage WeaponNumber run tellraw @a[tag=op] ["",{"text":"[ERROR] storage_damage: WeaponNumber未入力","color":"red"}]
execute unless data storage wnkm:storage_damage attackerPlayerNumber run tellraw @a[tag=op] ["",{"text":"[ERROR] storage_damage: attackerPlayerNumber未入力","color":"red"}]
#引数をチェックし、不足値があれば補う
execute unless data storage wnkm:storage_damage DamageType run data modify storage wnkm:storage_damage Damage set value 0b
execute unless data storage wnkm:storage_damage isMultiDamage run data modify storage wnkm:storage_damage Damage set value 0b
execute unless data storage wnkm:storage_damage isKnockbackDamage run data modify storage wnkm:storage_damage Damage set value 0b

execute if data storage wnkm:storage_damage Damage if data storage wnkm:storage_damage WeaponNumber if data storage wnkm:storage_damage attackerPlayerNumber run function wancomatter:general/damagetaken/storage_damage_set1