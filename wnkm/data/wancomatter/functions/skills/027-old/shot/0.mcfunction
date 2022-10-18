scoreboard players set @s Cooldown4 101

summon marker ~ ~ ~ {Tags:["-179_0","first"]}
scoreboard players operation @e[tag=first,limit=1] subcounter = @s subcounter
execute anchored eyes run tp @e[tag=first] ^ ^ ^1 ~ ~
scoreboard players operation @e[tag=first,limit=1] ownerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s ownerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber

tag @e[tag=first] remove first

#data merge block -18 87 91 {auto:1b}
