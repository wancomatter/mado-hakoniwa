particle dust{color:[0.25,0.05,0.2],scale:0.4} ~ ~1 ~ 1.5 1.5 1.5 1 6 normal @a
particle dust{color:[0.25,0.05,0.2],scale:0.6} ~ ~1 ~ 0.5 1.5 0.5 1 2 force @a

execute if entity @s[tag=magicDamage] run function wancomatter:skills/blackshield/resist
