tag @s add it
execute as @e[tag=musket,tag=!it] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @e[tag=it,limit=1,sort=nearest] remove it
execute if entity @s[tag=it] as @a[tag=musket_user] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber at @s run tag @s remove musket_user
tag @s remove it
tag @s remove now
kill @s