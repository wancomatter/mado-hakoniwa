#> mob_manager:entity_finder/attacked_entity/reset
#
# スコア等のリセット
#
# @within function core:tick/

scoreboard players reset @a[scores={AttackedEntity=-2147483648..}] AttackedEntity
scoreboard players reset @e[tag=AlreadyInitMob,type=!player,tag=AttackedEntity] AttackedEntity
tag @e[tag=AlreadyInitMob,type=!player,tag=AttackedEntity] remove AttackedEntity