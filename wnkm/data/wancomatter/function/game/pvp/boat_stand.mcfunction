execute unless entity @e[type=oak_boat,limit=1,distance=..1.7] if entity @s[y_rotation=80..100] run summon oak_boat ~ ~ ~ {Invulnerable:1b,Rotation:[90.0f,0.0f],Tags:["wnkm.owned","wnkm.round"]}
execute unless entity @e[type=oak_boat,limit=1,distance=..1.7] unless entity @s[y_rotation=80..100] run summon oak_boat ~ ~ ~ {Invulnerable:1b,Rotation:[-90.0f,0.0f],Tags:["wnkm.owned","wnkm.round"]}
