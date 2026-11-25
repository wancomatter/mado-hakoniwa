gamemode spectator @s
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["portal_using","this","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] counter = #dummy dummy
tag @s add portal_using_player
execute as @e[tag=this] at @s facing entity @e[tag=other_portal,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=this] remove this
