scoreboard players add @s counter 1
summon area_effect_cloud ^ ^ ^1.0 {Age:0,Duration:60,Radius:0.0f,Tags:["first","betelgeuse_AEC3","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute if score @s counter matches ..5 rotated ~ ~16 run function wancomatter:skills/009/first_loop3
