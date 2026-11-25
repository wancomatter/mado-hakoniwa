#0°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:iron_lab_1",rotation:"NONE",mirror:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:iron_lab_2",rotation:"NONE",mirror:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:32,name:"wnkm:iron_lab_3",rotation:"NONE",mirror:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:iron_lab_4",rotation:"NONE",mirror:"NONE"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#左右反転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:iron_lab_1",rotation:"NONE",mirror:"LEFT_RIGHT"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:iron_lab_2",rotation:"NONE",mirror:"LEFT_RIGHT"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:-32,name:"wnkm:iron_lab_3",rotation:"NONE",mirror:"LEFT_RIGHT"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:iron_lab_4",rotation:"NONE",mirror:"LEFT_RIGHT"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#180°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:iron_lab_1",rotation:"CLOCKWISE_180"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:iron_lab_2",rotation:"CLOCKWISE_180"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:-32,name:"wnkm:iron_lab_3",rotation:"CLOCKWISE_180"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:iron_lab_4",rotation:"CLOCKWISE_180"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#前後反転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:iron_lab_1",rotation:"NONE",mirror:"FRONT_BACK"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:iron_lab_2",rotation:"NONE",mirror:"FRONT_BACK"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:32,name:"wnkm:iron_lab_3",rotation:"NONE",mirror:"FRONT_BACK"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:iron_lab_4",rotation:"NONE",mirror:"FRONT_BACK"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

summon minecraft:armor_stand 58 8 58 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["spawnRed","spawnStand","wnkm.owned"]}
summon minecraft:armor_stand -58 8 -58 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["spawnBlue","spawnStand","wnkm.owned"]}
summon minecraft:armor_stand -58 8 58 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["spawnYellow","spawnStand","wnkm.owned"]}
summon minecraft:armor_stand 58 8 -58 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["spawnGreen","spawnStand","wnkm.owned"]}
execute at @e[tag=spawnRed] run fill ~-2 6 ~-2 ~2 6 ~2 minecraft:red_concrete replace minecraft:white_concrete
execute at @e[tag=spawnBlue] run fill ~-2 6 ~-2 ~2 6 ~2 minecraft:blue_concrete replace minecraft:white_concrete
execute at @e[tag=spawnYellow] run fill ~-2 6 ~-2 ~2 6 ~2 minecraft:yellow_concrete replace minecraft:white_concrete
execute at @e[tag=spawnGreen] run fill ~-2 6 ~-2 ~2 6 ~2 minecraft:green_concrete replace minecraft:white_concrete

execute at @e[tag=spawnRed] run fill ~-5 6 ~-5 ~5 6 ~5 minecraft:yellow_concrete replace minecraft:light_gray_concrete
execute at @e[tag=spawnBlue] run fill ~-5 6 ~-5 ~5 6 ~5 minecraft:green_concrete replace minecraft:light_gray_concrete
execute at @e[tag=spawnYellow] run fill ~-5 6 ~-5 ~5 6 ~5 minecraft:red_concrete replace minecraft:light_gray_concrete
execute at @e[tag=spawnGreen] run fill ~-5 6 ~-5 ~5 6 ~5 minecraft:blue_concrete replace minecraft:light_gray_concrete

execute at @e[tag=spawnRed] run fill ~-5 6 ~-5 ~5 6 ~5 minecraft:green_concrete replace minecraft:gray_concrete
execute at @e[tag=spawnBlue] run fill ~-5 6 ~-5 ~5 6 ~5 minecraft:yellow_concrete replace minecraft:gray_concrete
execute at @e[tag=spawnYellow] run fill ~-5 6 ~-5 ~5 6 ~5 minecraft:blue_concrete replace minecraft:gray_concrete
execute at @e[tag=spawnGreen] run fill ~-5 6 ~-5 ~5 6 ~5 minecraft:red_concrete replace minecraft:gray_concrete

summon minecraft:armor_stand 40 11.38 0 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand -40 11.38 0 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand 56 7.38 31 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand 56 7.38 -31 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand -56 7.38 31 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand -56 7.38 -31 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand 0 8.38 1 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand 0 8.38 -1 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand 1 8.38 0 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}
summon minecraft:armor_stand -1 8.38 0 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teleporter","wnkm.owned"]}


summon minecraft:armor_stand 61 27 8 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_lift_stand","wnkm.owned"]}
summon minecraft:armor_stand 56 27 7 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_lift_stand","wnkm.owned"]}
summon minecraft:armor_stand 61 27 -8 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_lift_stand","wnkm.owned"]}
summon minecraft:armor_stand 56 27 -7 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_lift_stand","wnkm.owned"]}
summon minecraft:armor_stand -61 27 8 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_lift_stand","wnkm.owned"]}
summon minecraft:armor_stand -56 27 7 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_lift_stand","wnkm.owned"]}
summon minecraft:armor_stand -61 27 -8 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_lift_stand","wnkm.owned"]}
summon minecraft:armor_stand -56 27 -7 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_lift_stand","wnkm.owned"]}

summon minecraft:armor_stand 0 9.5 0 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],Tags:["shulker_rotating_lift_o","shulker_rotating_lift_o1","wnkm.owned"]}
summon minecraft:armor_stand 0 9.5 0 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[180.0f,0.0f],Tags:["shulker_rotating_lift_o","shulker_rotating_lift_o2","wnkm.owned"]}
execute as @e[tag=shulker_rotating_lift_o] at @s run function wancomatter:map/5_iron_lab_loop

scoreboard players reset #stagechangeing counter
