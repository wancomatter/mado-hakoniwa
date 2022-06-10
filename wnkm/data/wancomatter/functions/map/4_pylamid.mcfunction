#0°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:17,posZ:0,name:"wnkm:pylamid_1",rotation:"NONE",mirror:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:pylamid_2",rotation:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:32,name:"wnkm:pylamid_3",rotation:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:pylamid_4",rotation:"NONE"}
setblock 0 0 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:16,sizeZ:32,posX:0,posY:5,posZ:0,name:"wnkm:pylamid_5",rotation:"NONE",mirror:"NONE"}
fill 1 0 0 1 4 0 minecraft:redstone_block
fill 1 0 0 1 4 0 minecraft:air

#左右反転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:17,posZ:0,name:"wnkm:pylamid_1",rotation:"NONE",mirror:"LEFT_RIGHT"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:pylamid_4",rotation:"CLOCKWISE_90"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:32,name:"wnkm:pylamid_3",rotation:"CLOCKWISE_90"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:pylamid_2",rotation:"CLOCKWISE_90"}
setblock 0 0 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:16,sizeZ:32,posX:0,posY:5,posZ:0,name:"wnkm:pylamid_5",rotation:"NONE",mirror:"LEFT_RIGHT"}
fill 1 0 0 1 4 0 minecraft:redstone_block
fill 1 0 0 1 4 0 minecraft:air

#180°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:17,posZ:0,name:"wnkm:pylamid_1",rotation:"CLOCKWISE_180"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:pylamid_2",rotation:"CLOCKWISE_180"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:-32,name:"wnkm:pylamid_3",rotation:"CLOCKWISE_180"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:pylamid_4",rotation:"CLOCKWISE_180"}
setblock 0 0 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:16,sizeZ:32,posX:0,posY:5,posZ:0,name:"wnkm:pylamid_5",rotation:"CLOCKWISE_180"}
fill 1 0 0 1 4 0 minecraft:redstone_block
fill 1 0 0 1 4 0 minecraft:air

#前後反転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:17,posZ:0,name:"wnkm:pylamid_1",rotation:"NONE",mirror:"FRONT_BACK"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:pylamid_4",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:-32,name:"wnkm:pylamid_3",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:pylamid_2",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 0 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:16,sizeZ:32,posX:0,posY:5,posZ:0,name:"wnkm:pylamid_5",rotation:"NONE",mirror:"FRONT_BACK"}
fill 1 0 0 1 4 0 minecraft:redstone_block
fill 0 0 0 1 4 0 minecraft:air

summon minecraft:armor_stand 50 21 8 {Tags:["spawnRed","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[90f,0f]}
summon minecraft:armor_stand -50 21 -8 {Tags:["spawnBlue","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[-90f,0f]}
summon minecraft:armor_stand -8 21 50 {Tags:["spawnYellow","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[180f,0f]}
summon minecraft:armor_stand 8 21 -50 {Tags:["spawnGreen","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[0f,0f]}

fill -63 20 -63 63 20 63 minecraft:structure_void replace minecraft:acacia_fence_gate
execute at @e[tag=spawnRed] run fill ~-5 ~ ~-5 ~5 ~10 ~5 minecraft:red_wool replace minecraft:black_wool
execute at @e[tag=spawnBlue] run fill ~-5 ~ ~-5 ~5 ~10 ~5 minecraft:blue_wool replace minecraft:black_wool
execute at @e[tag=spawnYellow] run fill ~-5 ~ ~-5 ~5 ~10 ~5 minecraft:yellow_wool replace minecraft:black_wool
execute at @e[tag=spawnGreen] run fill ~-5 ~ ~-5 ~5 ~10 ~5 minecraft:green_wool replace minecraft:black_wool
execute at @e[tag=spawnRed] run fill ~-5 ~ ~-5 ~5 ~10 ~5 minecraft:red_carpet replace minecraft:black_carpet
execute at @e[tag=spawnBlue] run fill ~-5 ~ ~-5 ~5 ~10 ~5 minecraft:blue_carpet replace minecraft:black_carpet
execute at @e[tag=spawnYellow] run fill ~-5 ~ ~-5 ~5 ~10 ~5 minecraft:yellow_carpet replace minecraft:black_carpet
execute at @e[tag=spawnGreen] run fill ~-5 ~ ~-5 ~5 ~10 ~5 minecraft:green_carpet replace minecraft:black_carpet
summon minecraft:armor_stand 18 24.38 0 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -18 24.38 0 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 24.38 18 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 24.38 -18 {Tags:["teleporter"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @e[tag=teleporter,tag=!lobby_entity] align y run setblock ~ ~ ~ minecraft:daylight_detector replace
execute at @e[tag=teleporter,tag=!lobby_entity] align y run setblock ~1 ~5 ~ minecraft:smooth_red_sandstone replace
execute at @e[tag=teleporter,tag=!lobby_entity] align y run setblock ~-1 ~5 ~ minecraft:smooth_red_sandstone replace
execute at @e[tag=teleporter,tag=!lobby_entity] align y run setblock ~ ~5 ~1 minecraft:smooth_red_sandstone replace
execute at @e[tag=teleporter,tag=!lobby_entity] align y run setblock ~ ~5 ~-1 minecraft:smooth_red_sandstone replace
scoreboard players reset #stagechangeing counter
