data remove entity @s Motion
tp @s ~ 30 ~
effect give @s slow_falling 5 0 true
execute at @s run function wancomatter:boss/detonator/skill2/discharge