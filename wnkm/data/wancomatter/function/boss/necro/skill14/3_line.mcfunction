particle dust{color:[0.4,0,0.5],scale:0.65} ^ ^0.5 ^0.001 0 0 0 0 1 force @a
particle dust{color:[0.4,0,0.5],scale:0.65} ^ ^0.5 ^0.501 0 0 0 0 1 normal @a
particle dust{color:[0.4,0,0.5],scale:0.65} ^ ^0.5 ^1.001 0 0 0 0 1 normal @a
execute positioned ^ ^ ^1.5 unless block ~ 5 ~ #wancomatter:air run function wancomatter:boss/necro/skill14/3_line
