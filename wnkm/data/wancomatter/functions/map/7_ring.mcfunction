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

summon minecraft:armor_stand 0 22 -30 {Tags:["jumpHorseStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[0f,0f]}
summon minecraft:armor_stand 30 22 0 {Tags:["jumpHorseStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[90f,0f]}
summon minecraft:armor_stand 0 22 30 {Tags:["jumpHorseStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[180f,0f]}
summon minecraft:armor_stand -30 22 0 {Tags:["jumpHorseStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[-90f,0f]}
summon minecraft:armor_stand 0 15 0 {Tags:["jumpHorseStand_o1"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[45f,0f]}
summon minecraft:armor_stand 0 15 0 {Tags:["jumpHorseStand_o2"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[45f,0f]}

summon minecraft:armor_stand 43 23 43 {Tags:["spawnRed","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -43 23 -43 {Tags:["spawnBlue","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -43 23 43 {Tags:["spawnYellow","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 43 23 -43 {Tags:["spawnGreen","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players reset #stagechangeing counter