#> mob_manager:entity_finder/attacking_entity/on_hurt
#
# 被攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_attacking_entity
    #say on_hurt
# tag付け
    tag @s add entity_finder
# フィルタ
    execute as @e[tag=AlreadyInitMob,type=!player,distance=..150] run function mob_manager:entity_finder/attacking_entity/filters/15
# リセット
    tag @s remove entity_finder
    advancement revoke @s only mob_manager:entity_finder/check_attacking_entity