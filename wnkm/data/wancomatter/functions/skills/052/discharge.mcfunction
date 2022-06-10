#コスト支払い
scoreboard players remove @s Mana 7
scoreboard players set @s CooldownX 240
scoreboard players set @s CooldownX_max 240


effect give @s minecraft:luck 4 5
execute positioned ~ ~0.5 ~ run function wancomatter:skills/052/particle
execute positioned ~ ~1.5 ~ run function wancomatter:skills/052/particle
execute positioned ~ ~2.5 ~ run function wancomatter:skills/052/particle
execute positioned ~ ~1.5 ~ rotated ~ 0 run function wancomatter:skills/052/particle2
scoreboard players reset #dummy dummy
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1.5 0.9
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1.5 0.8
particle block iron_block ~ ~0.5 ~ 2 0 2 1 100 normal @a

summon armor_stand ~ ~0.1 ~ {Tags:["metal","metal_sound"],Invisible:1b,Marker:1b,Passengers:[{id:"falling_block",NoGravity:1b,BlockState:{Name:"minecraft:glass"},Time:1,Tags:["metal"]}]}
summon armor_stand ~ ~1.1 ~ {Tags:["metal"],Invisible:1b,Marker:1b,Passengers:[{id:"falling_block",NoGravity:1b,BlockState:{Name:"minecraft:glass"},Time:1,Tags:["metal"]}]}
