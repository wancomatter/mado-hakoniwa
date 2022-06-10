scoreboard players remove @s Cooldown9_max 1
execute facing entity @a[gamemode=adventure,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0

execute if score @s Cooldown9_max matches 22 at @s run function wancomatter:boss/necro/skill9/2