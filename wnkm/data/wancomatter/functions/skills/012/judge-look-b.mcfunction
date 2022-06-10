summon marker ~ ~ ~ {Tags:["s12looker"]}
scoreboard players operation @e[tag=s12looker,limit=1] teamNumber = @s teamNumber
execute anchored eyes run tp @e[tag=s12looker] ^ ^ ^0.8 ~ ~
execute as @e[tag=s12looker] at @s if block ~ ~ ~ #wancomatter:air run function wancomatter:skills/012/judge-look
kill @e[tag=s12looker]