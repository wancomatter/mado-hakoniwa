execute positioned ~ 8.02 ~ facing entity @a[tag=necro_s5_target,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^2 ~ 0
execute facing entity @a[tag=necro_s5_target,limit=1] feet as @e[tag=necro] positioned as @s run tp @s ~ ~ ~ ~ 0
execute at @s run tp @s ^5 ^ ^
scoreboard players set @s subcounter -60

kill @e[tag=necro_s5pigman]