execute as @e[tag=028flag] at @s anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ~ ~-1 ~ {Tags:["vector"],Duration:1}
execute positioned ~ ~1 ~ facing entity @e[tag=vector,limit=1] feet run summon shulker_bullet ^ ^ ^1.5 {Tags:["first","shulker_turret_bullet"],NoGravity:1b,Fire:2s}
execute positioned ~ ~1 ~ as @e[tag=vector,limit=1] facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.9
data modify entity @e[tag=first,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos

#scoreboard players operation #dummy playerNumber = @s ownerNumber
#execute as @a[tag=p.summon_shulker] if score @s playerNumber = #dummy playerNumber run tag @s add user
#tag @a[tag=user] remove user
#data modify entity @e[tag=first,limit=1] Owner set from entity @s HandItems[0].tag.Owner

data modify entity @e[tag=first,limit=1] Owner set from entity @s UUID

playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1.2
execute at @e[tag=first,limit=1] run particle explosion ~ ~ ~ 0 0 0 1 1 force @a

kill @e[tag=vector]
tag @e[tag=first] remove first
tag @e[tag=028flag] remove 028flag
