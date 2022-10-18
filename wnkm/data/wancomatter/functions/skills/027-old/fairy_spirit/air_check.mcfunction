execute at @e[tag=027me,limit=1,sort=nearest] facing entity @s feet run function wancomatter:skills/027/air_check/0
execute if score #distance counter matches ..-1 run tag @s remove 027target
scoreboard players reset #distance
