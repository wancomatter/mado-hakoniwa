scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 180
scoreboard players set @s CooldownX_max 180
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.3 0.6

#カウンター用AECの召喚
summon area_effect_cloud ~ ~0.3 ~ {Tags:["bloodchain_stand","stable","this"],Duration:100}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
execute as @e[tag=this,limit=1] at @s run function wancomatter:skills/077/0-particle
tag @e[tag=this] remove this
tag @s add p.blood_chain
