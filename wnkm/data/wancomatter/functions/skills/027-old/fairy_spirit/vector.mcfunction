function project-c:general/get_distance/default
scoreboard players operation #distance counter *= #2 counter
scoreboard players operation #distance counter /= #3 counter
execute if score #distance counter matches 1000.. run scoreboard players set #distance counter 999
scoreboard players operation @s Cooldown3 = #distance counter
scoreboard players reset #distance
execute facing entity @s feet run tp @s 0.0 0.0 0.0 ~ ~
function project-c:general/score_tp/local_z
