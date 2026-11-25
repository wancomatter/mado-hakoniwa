scoreboard players operation #dummy playerNumber = @s playerNumber
execute if entity @e[tag=BlackShieldStand,limit=1] as @e[tag=BlackShieldStand] if score @s playerNumber = #dummy playerNumber run kill @s
summon armor_stand 0 0 0 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge","stable","BlackShieldStand","wnkm.owned"]}
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1.2 2
particle minecraft:witch ~ ~ ~ 1 1 1 1 52 normal @a
particle minecraft:witch ~ ~ ~ 1 1 1 1 13 force @a
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
tag @s add offBlackShield
