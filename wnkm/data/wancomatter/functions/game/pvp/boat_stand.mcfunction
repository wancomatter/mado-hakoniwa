execute unless entity @e[type=boat,limit=1,distance=..1.7] if entity @s[y_rotation=80..100] run summon boat ~ ~ ~ {Rotation:[90f,0f],Invulnerable:1b}
execute unless entity @e[type=boat,limit=1,distance=..1.7] unless entity @s[y_rotation=80..100] run summon boat ~ ~ ~ {Rotation:[-90f,0f],Invulnerable:1b}

