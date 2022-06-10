execute unless score @s counter matches 40.. run scoreboard players add @s counter 1
scoreboard players set @s subcounter 0
execute unless score @s counter matches 40.. rotated ~ 0 positioned ^ ^ ^2.5 run function wancomatter:boss/bear/child/skill5/razer_notice
execute if score @s counter matches 40.. rotated ~ 0 positioned ^ ^ ^2.5 run function wancomatter:boss/bear/child/skill5/razer
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/bear/child/skill5/hit
scoreboard players set @s subcounter 0
execute unless score @s counter matches 40.. rotated ~180 0 positioned ^ ^ ^2.5 run function wancomatter:boss/bear/child/skill5/razer_notice
execute if score @s counter matches 40.. rotated ~180 0 positioned ^ ^ ^2.5 run function wancomatter:boss/bear/child/skill5/razer
execute if entity @e[tag=hit,limit=1] run function wancomatter:boss/bear/child/skill5/hit

execute unless score #difficult counter matches 2..4 run tp @s ~ ~ ~ ~1.5 ~
execute if score #difficult counter matches 2 run tp @s ~ ~ ~ ~2 ~
execute if score #difficult counter matches 3 run tp @s ~ ~ ~ ~2.48 ~
execute if score #difficult counter matches 4 run tp @s ~ ~ ~ ~3.0 ~


