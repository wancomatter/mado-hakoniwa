tag @s add it
execute as @e[tag=072ar,tag=!it] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @e[tag=it,limit=1,sort=nearest] remove it
execute if entity @s[tag=it] as @a[tag=072ar_user] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber at @s run tag @s remove 072ar_user
tag @s remove it
tag @s remove now
kill @s