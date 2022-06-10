scoreboard players add @s counter 1
summon area_effect_cloud ^ ^ ^1.2 {Tags:["first","betelgeuse_AEC4"],Duration:60,Age:0,Radius:0f}
execute if score @s counter matches ..5 rotated ~ ~16 run function wancomatter:skills/009/first_loop4
