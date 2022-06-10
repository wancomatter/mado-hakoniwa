tag @s add portal_stand
tag @s remove portal_pearl_stand
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s Cooldown1
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s Cooldown2
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s Cooldown3
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=portal_pearl_throwed] if score @s playerNumber = #dummy playerNumber run tag @s add throwedBy
execute at @a[tag=throwedBy,limit=1] run summon armor_stand ~ ~0.2 ~ {Tags:["this","target_distance","portal_stand","portal_pearl_stand_x"],Marker:1b,Invisible:1b,NoGravity:1b,Fire:32767s}
execute at @s run function wancomatter:operation/distance
execute at @s facing entity @e[tag=this] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=this] facing ~ ~ ~ positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players add @s dummy 20
scoreboard players operation @e[tag=this] dummy = @s dummy
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] counter = @s counter
tag @s add this
execute as @e[tag=this] at @s run function wancomatter:skills/056/summon_hitbox
execute as @e[tag=this] run data modify entity @s ArmorItems set value [{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:56}}]
tag @e[tag=this] remove this
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.6 2
execute at @a[tag=throwedBy] run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.6 2
playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 0.6 0.9
execute at @a[tag=throwedBy] run playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 0.6 0.9
tag @a[tag=throwedBy] remove portal_pearl_throwed
tag @a[tag=throwedBy] remove throwedBy
