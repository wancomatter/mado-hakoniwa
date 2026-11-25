fill ~ ~ ~ ~ ~ ~ minecraft:ice replace minecraft:water[level=0]
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,Tags:["ice_boots_stand","stable","wnkm.owned"]}
playsound minecraft:entity.snow_golem.hurt master @a[distance=..9] ~ ~ ~ 0.6 0.9
particle block{block_state:"minecraft:frosted_ice"} ~ ~ ~ 0.6 0.6 0.6 1 20 normal @a
