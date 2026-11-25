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
particle block{block_state:"minecraft:iron_block"} ~ ~0.5 ~ 2 0 2 1 100 normal @a

summon armor_stand ~ ~0.1 ~ {Invisible:1b,Marker:1b,Passengers:[{BlockState:{id:"minecraft:glass"},NoGravity:1b,Tags:["metal","wnkm.owned","wnkm.round"],Time:1,id:"minecraft:falling_block"}],Tags:["metal","metal_sound","wnkm.owned","wnkm.round"]}
summon armor_stand ~ ~1.1 ~ {Invisible:1b,Marker:1b,Passengers:[{BlockState:{id:"minecraft:glass"},NoGravity:1b,Tags:["metal","wnkm.owned","wnkm.round"],Time:1,id:"minecraft:falling_block"}],Tags:["metal","wnkm.owned","wnkm.round"]}
