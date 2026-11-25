scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 1200
scoreboard players set @s CooldownX_max 1200
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=portal_pearl_stand_x] if score @s playerNumber = #dummy playerNumber run kill @s
execute as @e[tag=portal_hitbox] if score @s playerNumber = #dummy playerNumber run kill @s

summon minecraft:armor_stand 0.0 0.0 0.0 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["vector","wnkm.owned","wnkm.round"]}
data modify entity @e[tag=vector,limit=1] Pos set from entity @s Motion
execute as @e[tag=vector] positioned as @s run tp @s ^ ^ ^1.5

execute at @s anchored eyes run execute anchored eyes run summon minecraft:ender_pearl ^ ^ ^ {Fire:2s,Passengers:[{Fire:32767s,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this2","portal_pearl_stand","portal_pearl_stand_x","wnkm.owned","wnkm.round"],id:"minecraft:armor_stand"}],Tags:["this","portal_pearl","wnkm.owned","wnkm.round"]}
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
tag @e[tag=this] remove this
scoreboard players operation @e[tag=this2] playerNumber = @s playerNumber
tag @e[tag=this2] remove this2
kill @e[tag=vector]
tag @s add portal_pearl_throwed

playsound minecraft:entity.ender_pearl.throw master @a ~ ~ ~ 1.2 0.5
