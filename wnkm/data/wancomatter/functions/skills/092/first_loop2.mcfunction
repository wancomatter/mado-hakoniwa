scoreboard players add @s counter 1
summon area_effect_cloud ^ ^ ^1.0 {Tags:["first","vega_AEC2"],Duration:60,Age:0,Radius:0f}
execute if score @s counter matches ..5 rotated ~ ~16 run function wancomatter:skills/092/first_loop2
