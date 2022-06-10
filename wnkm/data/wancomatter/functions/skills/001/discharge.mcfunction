#コスト支払い
scoreboard players remove @s Mana 15
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300


#火矢召喚
#execute anchored eyes run summon arrow ^ ^ ^1 {Tags:["discharge"],life:1200s,PierceLevel:10b,Fire:300s,damage:3.0d,crit:1b,OwnerUUIDLeast:1L,OwnerUUIDMost:1L,Color:-1b}
#data modify entity @e[tag=discharge,limit=1] OwnerUUIDMost set from entity @s UUIDMost
#data modify entity @e[tag=discharge,limit=1] OwnerUUIDLeast set from entity @s UUIDLeast
#execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^1.6 {Tags:["discharge2"],Invisible:1b,Marker:1b,NoGravity:1b}
#execute as @e[tag=discharge] run data modify entity @s Motion set from entity @e[tag=discharge2,limit=1] Pos
#kill @e[tag=discharge2]
#tag @e[tag=discharge] remove discharge

summon marker ~ ~ ~ {Tags:["discharge","fire_arrow_stand"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
playsound minecraft:entity.blaze.shoot master @a ~ ~1.6 ~ 1 0.5
particle flame ~ ~ ~ 2 2 2 0.03 160 normal @a
particle flame ~ ~ ~ 2 2 2 0.03 40 force @a
particle minecraft:lava ~ ~ ~ 1 1 1 1 8 normal @a
particle minecraft:lava ~ ~ ~ 1 1 1 1 2 force @a
scoreboard players reset #dummy