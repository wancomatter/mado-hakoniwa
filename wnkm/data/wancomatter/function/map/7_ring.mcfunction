#0°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:ring_1",rotation:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:ring_2",rotation:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:32,name:"wnkm:ring_3",rotation:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:ring_4",rotation:"NONE"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#90°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:ring_1",rotation:"CLOCKWISE_90"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:ring_4",rotation:"CLOCKWISE_90"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:32,name:"wnkm:ring_3",rotation:"CLOCKWISE_90"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:ring_2",rotation:"CLOCKWISE_90"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#180°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:ring_1",rotation:"CLOCKWISE_180"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:ring_2",rotation:"CLOCKWISE_180"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:-32,name:"wnkm:ring_3",rotation:"CLOCKWISE_180"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:ring_4",rotation:"CLOCKWISE_180"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#270°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:ring_1",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:ring_4",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:-32,name:"wnkm:ring_3",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:ring_2",rotation:"COUNTERCLOCKWISE_90"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

fill 31 21 31 45 21 45 minecraft:red_stained_glass replace minecraft:gray_stained_glass
fill -31 21 31 -45 21 45 minecraft:yellow_stained_glass replace minecraft:gray_stained_glass
fill -31 21 -31 -45 21 -45 minecraft:blue_stained_glass replace minecraft:gray_stained_glass
fill 31 21 -31 45 21 -45 minecraft:green_stained_glass replace minecraft:gray_stained_glass

summon minecraft:armor_stand 0 22 -30 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],Tags:["jumpHorseStand","wnkm.owned"]}
summon minecraft:armor_stand 30 22 0 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f],Tags:["jumpHorseStand","wnkm.owned"]}
summon minecraft:armor_stand 0 22 30 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[180.0f,0.0f],Tags:["jumpHorseStand","wnkm.owned"]}
summon minecraft:armor_stand -30 22 0 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[-90.0f,0.0f],Tags:["jumpHorseStand","wnkm.owned"]}
summon minecraft:armor_stand 0 15 0 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[45.0f,0.0f],Tags:["jumpHorseStand_o1","wnkm.owned"]}
summon minecraft:armor_stand 0 15 0 {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[45.0f,0.0f],Tags:["jumpHorseStand_o2","wnkm.owned"]}

summon minecraft:armor_stand 43 23 43 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["spawnRed","spawnStand","wnkm.owned"]}
summon minecraft:armor_stand -43 23 -43 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["spawnBlue","spawnStand","wnkm.owned"]}
summon minecraft:armor_stand -43 23 43 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["spawnYellow","spawnStand","wnkm.owned"]}
summon minecraft:armor_stand 43 23 -43 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["spawnGreen","spawnStand","wnkm.owned"]}
scoreboard players reset #stagechangeing counter
