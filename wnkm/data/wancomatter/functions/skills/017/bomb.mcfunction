playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1.3 0.5
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 1 360 normal @a
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 1 90 force @a
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.5 240 normal @a
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.5 60 force @a
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.25 120 normal @a
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.25 30 force @a

summon marker ^9 ^ ^ {Tags:["blaze-raze2","discharge","Braze-sound"]}
summon marker ^7.5 ^ ^ {Tags:["blaze-raze2","discharge"]}
summon marker ^6 ^ ^ {Tags:["blaze-raze2","discharge"]}
summon marker ^4.5 ^ ^ {Tags:["blaze-raze2","discharge"]}
summon marker ^3 ^ ^ {Tags:["blaze-raze2","discharge","Braze-sound"]}
summon marker ^1.5 ^ ^ {Tags:["blaze-raze2","discharge"]}
summon marker ^-1.5 ^ ^ {Tags:["blaze-raze2","discharge"]}
summon marker ^-3 ^ ^ {Tags:["blaze-raze2","discharge","Braze-sound"]}
summon marker ^-4.5 ^ ^ {Tags:["blaze-raze2","discharge"]}
summon marker ^-6 ^ ^ {Tags:["blaze-raze2","discharge"]}
summon marker ^-7.5 ^ ^ {Tags:["blaze-raze2","discharge"]}
summon marker ^-9 ^ ^ {Tags:["blaze-raze2","discharge","Braze-sound"]}

execute rotated as @s as @e[tag=discharge] positioned as @s run tp @s ~ ~0.7 ~ ~ 0
tag @s add Braze-bomb
execute as @e[tag=discharge] run scoreboard players operation @s playerNumber = @e[tag=Braze-bomb,limit=1] playerNumber
execute as @e[tag=discharge] run scoreboard players operation @s teamNumber = @e[tag=Braze-bomb,limit=1] teamNumber
tag @s remove Braze-bomb

tag @e[tag=discharge] remove discharge
kill @s