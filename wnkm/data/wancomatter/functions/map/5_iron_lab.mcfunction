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

summon minecraft:armor_stand 58 8 58 {Tags:["spawnRed","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -58 8 -58 {Tags:["spawnBlue","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -58 8 58 {Tags:["spawnYellow","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 58 8 -58 {Tags:["spawnGreen","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
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

summon minecraft:armor_stand 40 11.38 0 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -40 11.38 0 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 56 7.38 31 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 56 7.38 -31 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -56 7.38 31 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -56 7.38 -31 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 8.38 1 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 8.38 -1 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 1 8.38 0 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -1 8.38 0 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}


summon minecraft:armor_stand 61 27 8 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["shulker_lift_stand"],Passengers:[{id:"minecraft:shulker",Tags:["shulker_lift"],NoAI:1b,Silent:1b,Invulnerable:1b}]}
summon minecraft:armor_stand 56 27 7 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["shulker_lift_stand"],Passengers:[{id:"minecraft:shulker",Tags:["shulker_lift"],NoAI:1b,Silent:1b,Invulnerable:1b}]}
summon minecraft:armor_stand 61 27 -8 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["shulker_lift_stand"],Passengers:[{id:"minecraft:shulker",Tags:["shulker_lift"],NoAI:1b,Silent:1b,Invulnerable:1b}]}
summon minecraft:armor_stand 56 27 -7 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["shulker_lift_stand"],Passengers:[{id:"minecraft:shulker",Tags:["shulker_lift"],NoAI:1b,Silent:1b,Invulnerable:1b}]}
summon minecraft:armor_stand -61 27 8 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["shulker_lift_stand"],Passengers:[{id:"minecraft:shulker",Tags:["shulker_lift"],NoAI:1b,Silent:1b,Invulnerable:1b}]}
summon minecraft:armor_stand -56 27 7 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["shulker_lift_stand"],Passengers:[{id:"minecraft:shulker",Tags:["shulker_lift"],NoAI:1b,Silent:1b,Invulnerable:1b}]}
summon minecraft:armor_stand -61 27 -8 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["shulker_lift_stand"],Passengers:[{id:"minecraft:shulker",Tags:["shulker_lift"],NoAI:1b,Silent:1b,Invulnerable:1b}]}
summon minecraft:armor_stand -56 27 -7 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Tags:["shulker_lift_stand"],Passengers:[{id:"minecraft:shulker",Tags:["shulker_lift"],NoAI:1b,Silent:1b,Invulnerable:1b}]}

summon minecraft:armor_stand 0 9.5 0 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["shulker_rotating_lift_o","shulker_rotating_lift_o1"],Rotation:[0f,0f]}
summon minecraft:armor_stand 0 9.5 0 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["shulker_rotating_lift_o","shulker_rotating_lift_o2"],Rotation:[180f,0f]}
execute as @e[tag=shulker_rotating_lift_o] at @s run function wancomatter:map/5_iron_lab_loop

scoreboard players reset #stagechangeing counter
