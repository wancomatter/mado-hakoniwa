execute if entity @s[tag=traped-icicle] run tag @s add kill
#ブロック端判定
execute positioned as @s positioned ^ ^ ^0.8 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute positioned as @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute positioned as @s positioned ^ ^ ^0.2 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute positioned as @s positioned ^ ^ ^0.1 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute positioned as @s positioned ^ ^ ^0.05 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
#天井以外の処理(命中判定)
execute positioned as @s unless block ~ ~-0.18 ~ #wancomatter:air run tag @s add kill
#天井処理(トラップ化)
execute if entity @s[tag=!kill] positioned as @s run function wancomatter:skills/003/set-trap
kill @e[tag=kill]