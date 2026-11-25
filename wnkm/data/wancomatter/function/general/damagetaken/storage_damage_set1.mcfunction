#> wancomatter:general/damagetaken/storage_damage_set1
#
# ・ダメージ情報を条件分岐させるだけ
# ・multiDamageのみ本functionで適用
#

execute unless score @s damageTaken matches -2147483648.. run scoreboard players add @s damageTaken 0
#無敵時間貫通の有無タグを付与
execute if data storage wnkm:storage_damage {isMultiDamage:1b} run tag @s add multiDamage

#基礎ダメージをスコア代入
execute store result score #storage_damage damageTaken run data get storage wnkm:storage_damage Damage 10
#multiDamageありの場合: ダメージ量が現在のdamageTakenより大きければhurtByNumberを更新、damageTakenを加算
execute if data storage wnkm:storage_damage {isMultiDamage:1b} run scoreboard players operation @s damageTaken += #storage_damage damageTaken
#multiDamageなしの場合: ダメージ量が現在のdamageTakenより大きければdamageTakenを更新
execute unless data storage wnkm:storage_damage {isMultiDamage:1b} if score @s damageTaken < #storage_damage damageTaken run scoreboard players operation @s damageTaken = #storage_damage damageTaken

#ダメージ量が現在のdamageTakenより大きければダメージ詳細情報を更新
execute if score @s damageTaken <= #storage_damage damageTaken run function wancomatter:general/damagetaken/storage_damage_set2
