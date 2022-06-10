scoreboard players set @s CooldownX 360
scoreboard players set @s CooldownX_max 360

summon marker ~ ~ ~ {Tags:["procyon","this"]}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this,limit=1] Mana = @s Mana
scoreboard players set @s Mana 0
tag @e[tag=this] remove this
