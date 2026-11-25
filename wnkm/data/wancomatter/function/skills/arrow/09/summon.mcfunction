tag @s add it
execute as @a if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @s add user
tag @s remove it
particle end_rod ~ ~ ~ 0 0 0 0.2 80 normal @a
particle end_rod ~ ~ ~ 0 0 0 0.2 20 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 2

summon area_effect_cloud ~ ~ ~ {Age:10,Duration:155,Particle:"falling_dust packed_ice",Radius:0.1f,Tags:["freeze_arrow_DoT","first","wnkm.owned","wnkm.round"],custom_particle:{block_state:{id:"minecraft:packed_ice"},type:"minecraft:falling_dust"},potion_duration_scale:0.25f}

scoreboard players operation @e[tag=first,limit=1] playerNumber = @a[tag=user,limit=1] playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @a[tag=user,limit=1] teamNumber
data modify entity @e[tag=first,limit=1] Owner set from entity @a[tag=user,limit=1] UUID
tag @e[tag=first] remove first
tag @a[tag=user] remove user
kill @s
