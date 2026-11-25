execute at @s anchored eyes run summon armor_stand ^ ^ ^ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["097-03dummy","097-03","wnkm.owned","wnkm.round"]}
execute positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=097dummy,limit=1] feet positioned ^ ^ ^50 if entity @e[tag=097-03dummy,limit=1,distance=..1.6] run tag @s add hit
tag @e[tag=097-03dummy] remove 097-03dummy
kill @e[tag=097-03]
