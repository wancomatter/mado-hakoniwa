#> mob_manager:entity_finder/attacked_entity/on_attack
#
# 攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_attacked_entity
    #say on_attack
# tag付け
    tag @s add entity_finder
# フィルタ
    execute as @e[tag=AlreadyInitMob,type=!player,nbt=!{HurtTime:0s},distance=..150] run function mob_manager:entity_finder/attacked_entity/filters/15
# リセット
    tag @s remove entity_finder
    #advancement revoke @s only mob_manager:entity_finder/check_attacked_entity