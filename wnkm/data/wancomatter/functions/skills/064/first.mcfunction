#コスト支払い
scoreboard players remove @s Mana 4
scoreboard players set @s CooldownX 40
scoreboard players set @s CooldownX_max 40


summon marker ~ ~ ~ {Tags:["this","anti_aircraft"]}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this
tag @s add anti_aircraft_using
effect give @s minecraft:slowness 1 0
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1.2 2

