summon area_effect_cloud ~ ~ ~ {Tags:["this"],Duration:10}
execute store result entity @e[tag=this,limit=1] Pos[0] double 0.1 run scoreboard players get @s respawnX
execute store result entity @e[tag=this,limit=1] Pos[1] double 0.1 run scoreboard players get @s respawnY
execute store result entity @e[tag=this,limit=1] Pos[2] double 0.1 run scoreboard players get @s respawnZ
execute at @e[tag=this,limit=1] run tp @s ~ ~ ~
kill @e[tag=this]