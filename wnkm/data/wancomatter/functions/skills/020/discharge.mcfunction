scoreboard players remove @s Mana 4
scoreboard players set @s CooldownX 20
scoreboard players set @s CooldownX_max 20

execute if data entity @s {ActiveEffects:[{Id:2}]} store result score @s dummy run data get entity @s ActiveEffects[{Id:2}].Amplifier
execute if score @s dummy matches 0..1 run effect clear @s minecraft:slowness
execute positioned ~ ~-0.5 ~ anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["discharge","windcut"]}

execute positioned ~ ~-0.5 ~ anchored eyes run tp @e[tag=discharge,limit=1] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber

execute as @e[tag=windcut_p_stand] if score @s playerNumber = @e[tag=discharge,limit=1] playerNumber run tag @s add windcut_p_used
scoreboard players operation @e[tag=discharge,limit=1] subcounter = @e[tag=windcut_p_used,limit=1] counter
execute as @e[tag=discharge,limit=1] if score @s subcounter matches 33.. run scoreboard players set @s subcounter 32
scoreboard players set @e[tag=discharge,limit=1] counter -10
kill @e[tag=windcut_p_used]
tag @e[tag=discharge] remove discharge

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.2 2
tag @s remove windcut_addable
