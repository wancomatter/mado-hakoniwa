tellraw @s [{"text":"[1on1]","color":"gold"},{"text":" 対戦相手を募集中です……","color":"white"}]
summon area_effect_cloud ~ ~ ~ {Duration:500,Tags:["1on1_entry","this_1on1","wnkm.owned"],potion_duration_scale:0.25f}
scoreboard players operation @e[tag=this_1on1,limit=1] playerNumber = @s playerNumber
scoreboard players set @e[tag=this_1on1] counter 20
tag @s add 1on1_searching
