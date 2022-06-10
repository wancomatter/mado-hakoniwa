fill ~ ~ ~ ~ ~ ~ minecraft:ice replace minecraft:water[level=0]
summon armor_stand ~ ~ ~ {Small:1b,Tags:["ice_boots_stand","stable"],Marker:1b,Invisible:1b,NoGravity:1b}
playsound minecraft:entity.snow_golem.hurt master @a[distance=..9] ~ ~ ~ 0.6 0.9
particle minecraft:block frosted_ice ~ ~ ~ 0.6 0.6 0.6 1 20 normal @a
