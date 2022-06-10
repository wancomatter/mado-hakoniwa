tag @s add it
execute as @e[tag=shoen_gun,tag=!it] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @e[tag=it,limit=1,sort=nearest] remove it
execute if entity @s[tag=it] as @a[tag=shoen_gun_user] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber at @s run tag @s remove shoen_gun_user
tag @s remove it
scoreboard players set @s counter 100
scoreboard players set @s subcounter 100