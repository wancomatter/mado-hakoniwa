#コスト支払い
scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 100
scoreboard players set @s CooldownX_max 100


summon marker ~ ~ ~ {Tags:["this","hate_flash"]}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this
execute positioned ~ ~0.5 ~ run function wancomatter:skills/050/particle
execute positioned ~ ~1 ~ run function wancomatter:skills/050/particle
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1.5 1.2
particle minecraft:flash ~ ~ ~ 2 0 2 1 5 normal @a
particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a

