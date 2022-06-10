scoreboard players remove @s Mana 3
scoreboard players set @s CooldownX 100
scoreboard players set @s CooldownX_max 100
execute anchored eyes run summon minecraft:marker ^ ^-0.3 ^ {Tags:["this","denkou","denkou_p_stand"]}

execute anchored eyes run tp @e[tag=this,limit=1] ^ ^-0.3 ^ ~ ~
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute as @e[tag=denkou_p_stand,tag=!this] if score @s playerNumber = @e[tag=this,limit=1,sort=nearest] playerNumber run kill @s
tag @e[tag=this] remove this

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 2
tag @s add denkou_addable
