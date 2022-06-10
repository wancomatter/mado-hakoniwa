execute if data entity @s {Trident:{tag:{CustomModelData:101}}} run tag @s add trident_neptune
execute if entity @s[tag=trident_neptune] run tag @s add stable
execute if entity @s[tag=trident_neptune] run scoreboard players set @s playerNumber 0
tag @s add projectile