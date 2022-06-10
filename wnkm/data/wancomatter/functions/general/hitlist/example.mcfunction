summon marker ~ ~ ~ {Tags:["hitlist_example","first"]}
tp @e[tag=first] ~ ~1 ~ ~ ~
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
tag @e[tag=first] remove first

tellraw @a {"text":"--------------------------------"}
execute as @e[tag=hitlist_example] at @s run function wancomatter:general/hitlist/example_check1
execute as @e[tag=hitlist_example] at @s run function wancomatter:general/hitlist/example_check2
execute as @e[tag=hitlist_example] at @s run function wancomatter:general/hitlist/example_check3
tellraw @a {"text":"--------------------------------"}

kill @e[tag=hitlist_example]