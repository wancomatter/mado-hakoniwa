scoreboard players set @s Cooldown2 320
tag @s add usedskill
execute positioned ^ ^ ^6 at @a[sort=nearest,limit=1,gamemode=!spectator] run summon minecraft:marker ~ ~ ~ {Tags:["discharge2"]}
execute if entity @e[tag=discharge2,limit=1] anchored eyes positioned ^ ^ ^1 run summon minecraft:marker ~ ~-0.7 ~ {Tags:["discharge","b1sparkrush"]}
execute facing entity @e[tag=discharge2,limit=1] feet positioned as @s anchored eyes positioned ^ ^ ^1 run tp @e[tag=discharge,limit=1] ~ ~-0.7 ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber

execute as @e[tag=discharge,limit=1] at @s run function wancomatter:boss/detonator/skill2/distance

kill @e[tag=discharge2]
tag @e[tag=discharge] remove discharge