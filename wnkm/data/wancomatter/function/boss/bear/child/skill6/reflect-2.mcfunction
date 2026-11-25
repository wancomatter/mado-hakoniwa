#タゲ選択
execute positioned ^ ^ ^6 at @a[scores={maxHP=1..},limit=1,sort=nearest,distance=10..] run summon area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["target","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute if entity @e[tag=target,limit=1] facing entity @e[tag=target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=target] remove target
scoreboard players add @s Cooldown9 3
