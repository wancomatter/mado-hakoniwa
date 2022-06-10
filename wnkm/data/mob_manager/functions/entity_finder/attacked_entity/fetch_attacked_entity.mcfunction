#> mob_manager:entity_finder/attacked_entity/fetch_attacked_entity
#
# 多分このfunctionの実行者は攻撃したEntityであるはず
#
# @within function mob_manager:entity_finder/attacked_entity/filters/0

# 軽量にセレクターを利用する用のtag
    #tag @s add AttackedEntity
# 紐づけ用スコア
    scoreboard players operation @s hurtByNumber = @a[tag=entity_finder,limit=1] playerNumber
    execute if entity @s[nbt=!{SelectedItem:{tag:{blessItem:1b}}}] store result score @s hurtWeaponNumber run data get entity @a[tag=entity_finder,limit=1] SelectedItem.tag.CustomModelData 1
    function wancomatter:general/mob-damage
# damageTaken呼び出し
    function wancomatter:general/damagetaken/main