#タゲ選択
execute positioned ^ ^ ^6 at @a[scores={maxHP=1..},limit=1,sort=nearest,distance=10..] run summon area_effect_cloud ~ ~1 ~ {Tags:["target"],Duration:1}
execute if entity @e[tag=target,limit=1] facing entity @e[tag=target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=target] remove target
scoreboard players add @s Cooldown9 3