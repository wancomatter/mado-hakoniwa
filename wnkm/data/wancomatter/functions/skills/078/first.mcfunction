scoreboard players remove @s Mana 45
scoreboard players set @s CooldownX 1200
scoreboard players set @s CooldownX_max 1200

execute positioned 0.0 0.16 0.0 positioned ^ ^ ^1.88 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["vector"],Duration:1}
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:["this","meteorStand","meteroStand_noGround"],Invisible:1b,Small:1b,Invulnerable:1b,Silent:1b}
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this

playsound minecraft:entity.witch.throw master @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.witch.throw master @a ~ ~ ~ 1.5 0.6
