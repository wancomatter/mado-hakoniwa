tag @s add it
execute as @a if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @s add user
tag @s remove it
particle end_rod ~ ~ ~ 0 0 0 0.2 80 normal @a
particle end_rod ~ ~ ~ 0 0 0 0.2 20 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 2

summon area_effect_cloud ~ ~ ~ {Particle:"falling_dust packed_ice",Duration:155,Age:10,Radius:0.1f,Tags:["freeze_arrow_DoT","first"]}

scoreboard players operation @e[tag=first,limit=1] playerNumber = @a[tag=user,limit=1] playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @a[tag=user,limit=1] teamNumber
data modify entity @e[tag=first,limit=1] Owner set from entity @a[tag=user,limit=1] UUID
tag @e[tag=first] remove first
tag @a[tag=user] remove user
kill @s
