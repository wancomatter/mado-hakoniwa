execute positioned ~14 ~ ~ run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["b1s23stand","wnkm.owned","wnkm.round"]}
execute positioned ~-14 ~ ~ run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["b1s23stand","wnkm.owned","wnkm.round"]}
execute positioned ~ ~ ~14 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["b1s23stand","wnkm.owned","wnkm.round"]}
execute positioned ~ ~ ~-14 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["b1s23stand","wnkm.owned","wnkm.round"]}
execute as @a[scores={maxHP=1..}] run function wancomatter:boss/detonator/skill23/thunder
kill @e[tag=b1s23stand]
playsound minecraft:entity.wither.shoot master @a 0 -30 0 0 2 1
