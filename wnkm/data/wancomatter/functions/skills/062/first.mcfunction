#コスト支払い
scoreboard players remove @s Mana 11
scoreboard players set @s CooldownX 200
scoreboard players set @s CooldownX_max 200


summon marker ~ ~ ~ {Tags:["this","icefan"]}
scoreboard players set @e[tag=this,limit=1] counter 2
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this
scoreboard players set @s dummy 24
execute positioned ~ ~0.5 ~ run function wancomatter:skills/062/particle
scoreboard players set @s dummy 24
execute positioned ~ ~1 ~ run function wancomatter:skills/062/particle
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.2
particle minecraft:flash ~ ~ ~ 2 0 2 1 5 normal @a
particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a

