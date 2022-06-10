#> wancomatter:general/damagetaken/storage_damage_set2
#
# ・ダメージ情報を設定するだけ
# ・ダメージを適用するfunctionを実行するだけ(未実装)
#

#hurtByNumberとhurtWeaponNumberを更新
execute store result score @s hurtByNumber run data get storage wnkm:storage_damage attackerPlayerNumber 1
execute store result score @s hurtWeaponNumber run data get storage wnkm:storage_damage WeaponNumber 1

#ダメージタイプのタグを付与
execute if data storage wnkm:storage_damage {DamageType:0b} run tag @s add pysicalDamage
execute if data storage wnkm:storage_damage {DamageType:1b} run tag @s add magicDamage
execute if data storage wnkm:storage_damage {DamageType:2b} run tag @s add trueDamage

#ノクバの有無タグを付与
execute if data storage wnkm:storage_damage {isKnockbackDamage:0b} run tag @s add noKnockbackDamage

#ダメージを適応する
function wancomatter:general/damagetaken/main