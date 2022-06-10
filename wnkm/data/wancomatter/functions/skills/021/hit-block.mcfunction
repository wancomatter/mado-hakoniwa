#ブロック端判定
execute at @s positioned ^ ^ ^0.8 if block ~ ~0.5 ~ #wancomatter:air at @s positioned ^ ^ ^0.5 if block ~ ~0.5 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.55 if block ~ ~0.5 ~ #wancomatter:air at @s positioned ^ ^ ^0.25 if block ~ ~0.5 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.425 if block ~ ~0.5 ~ #wancomatter:air at @s positioned ^ ^ ^0.125 if block ~ ~0.5 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.3625 if block ~ ~0.5 ~ #wancomatter:air at @s positioned ^ ^ ^0.0625 if block ~ ~0.5 ~ #wancomatter:air run tp @s ~ ~ ~

execute at @s run particle poof ~ ~0.5 ~ 0.9 0.9 0.9 0 30 normal @a
execute at @s run particle poof ~ ~0.5 ~ 0.9 0.9 0.9 0 10 force @a
playsound minecraft:entity.spider.step master @a ~ ~ ~ 1.5 0.5
tag @s add stop