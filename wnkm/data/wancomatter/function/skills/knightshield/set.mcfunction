scoreboard players operation #dummy playerNumber = @s playerNumber
execute if entity @e[tag=KnightShieldStand,limit=1] as @e[tag=KnightShieldStand] if score @s playerNumber = #dummy playerNumber run kill @s
summon armor_stand 0 0 0 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge","stable","KnightShieldStand","wnkm.owned"]}
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 1
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
tag @s add offKnightShield
