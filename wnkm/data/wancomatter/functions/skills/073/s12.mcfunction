summon armor_stand ~ ~ ~ {Tags:["hide-mode","stable","discharge"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge