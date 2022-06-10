execute as @e[tag=knight-target_stand] if score @s playerNumber = #dummy playerNumber run tag @s add knight-target_stand5
execute at @s facing entity @e[tag=knight-target_stand5,limit=1] feet positioned 0.0 0.0 0.0 rotated ~ 0 run summon marker ^ ^0.2 ^0.45 {Tags:["discharge"]}
data modify entity @s Motion set from entity @e[tag=discharge,limit=1] Pos
kill @e[tag=discharge]
kill @e[tag=knight-target_stand5]
scoreboard players reset @s counter
tag @s remove knight-com5