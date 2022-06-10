scoreboard players add @s counter 1
summon area_effect_cloud ^ ^ ^0.8 {Tags:["first","vega_AEC"],Duration:60,Age:0,Radius:0f}
execute if score @s counter matches ..5 rotated ~ ~16 run function wancomatter:skills/092/first_loop
