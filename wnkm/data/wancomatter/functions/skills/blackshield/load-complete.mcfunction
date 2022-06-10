playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1.2 0.5
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1.2 2
particle minecraft:enchant ~ ~ ~ 1 1 1 1 200 normal @a
particle minecraft:enchant ~ ~ ~ 1 1 1 1 50 force @a
particle minecraft:crit ~ ~ ~ 1 1 1 1 52 normal @a
particle minecraft:crit ~ ~ ~ 1 1 1 1 13 force @a
scoreboard players set @e[tag=nowBlackShield,limit=1] counter 201
scoreboard players remove @s Mana 10