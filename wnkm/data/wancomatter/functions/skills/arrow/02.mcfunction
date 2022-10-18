scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300

execute positioned as @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 1.2 1
execute positioned as @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 1.2 1
execute positioned as @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 1.2 1

execute if data entity @s {Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]} run function wancomatter:skills/arrow/clear_crossbow_arrow
clear @s minecraft:arrow
clear @s minecraft:spectral_arrow
clear @s minecraft:tipped_arrow
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s add arrow_offgive
execute if entity @s[tag=arrow_offgive] run loot replace entity @s weapon.offhand loot wancomatter:skills/arrow/spectral
execute unless entity @s[tag=arrow_offgive] run loot give @s loot wancomatter:skills/arrow/spectral
execute if entity @s[tag=extend_quiver] run loot give @s loot wancomatter:skills/arrow/1_spectral
execute if entity @s[tag=extend_quiver] run loot give @s loot wancomatter:skills/arrow/1_spectral
execute if entity @s[tag=arrow_offgive] run tag @s remove arrow_offgive
