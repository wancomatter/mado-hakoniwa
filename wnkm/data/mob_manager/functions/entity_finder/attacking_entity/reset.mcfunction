#> mob_manager:entity_finder/attacking_entity/reset
#
# スコア等のリセット
#
# @within function core:tick/

scoreboard players reset @a[scores={AttackingEntity=-2147483648..}] AttackingEntity
scoreboard players reset @e[tag=AlreadyInitMob,type=!player,tag=AttackingEntity] AttackingEntity
tag @e[tag=AlreadyInitMob,type=!player,tag=AttackingEntity] remove AttackingEntity