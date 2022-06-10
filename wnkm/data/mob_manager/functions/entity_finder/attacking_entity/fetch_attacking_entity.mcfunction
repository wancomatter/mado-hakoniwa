#> mob_manager:entity_finder/attacking_entity/fetch_attacking_entity
#
# 多分このfunctionの実行者は攻撃してきたEntityであるはず
#
# @within function mob_manager:entity_finder/attacking_entity/filters/0

# 軽量にセレクターを利用する用のtag
    #tag @s add AttackingEntity
# 紐づけ用スコア
    scoreboard players operation @a[tag=entity_finder,limit=1] hurtByNumber = @s playerNumber
    scoreboard players set @s hurtWeaponNumber 0

# 例外処理
    execute if entity @s[tag=bomb-command] run function wancomatter:skills/030/attacking_entity
# damageTaken呼び出し
    #execute as @a[tag=entity_finder,limit=1] run function wancomatter:general/damagetaken/main