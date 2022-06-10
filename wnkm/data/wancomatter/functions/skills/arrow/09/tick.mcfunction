scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy subcounter2 = @s subcounter2
execute as @e[tag=freeze_arrow_AEC] if score @s subcounter2 = #dummy subcounter2 run kill @s
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["this","freeze_arrow_AEC"],Duration:3,Radius:0f}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] subcounter2 = @s subcounter2
execute store result score @e[tag=this,limit=1] Cooldown1 run data get entity @s Motion[0] 300
execute store result score @e[tag=this,limit=1] Cooldown2 run data get entity @s Motion[2] 300
scoreboard players reset #dummy
tag @e[tag=this] remove this
