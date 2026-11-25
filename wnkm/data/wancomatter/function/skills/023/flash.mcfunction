particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 2 0 2 1 30 force @s
playsound minecraft:entity.firework_rocket.large_blast_far master @s ~ ~ ~ 1.2 0.8
tag @s add flash_blind
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge","flash_blind_stand","wnkm.owned","wnkm.round"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
