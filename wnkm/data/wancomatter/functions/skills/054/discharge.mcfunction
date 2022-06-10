#コスト支払い
scoreboard players remove @s Mana 24
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300


summon armor_stand ~ ~ ~ {Tags:["discharge","self_heal"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2
effect give @s minecraft:slowness 1 2
particle minecraft:dust 1 1 1 1 ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:dust 1 1 1 1 ~ ~ ~ 1 1 1 1 25 force @a
scoreboard players reset #dummy