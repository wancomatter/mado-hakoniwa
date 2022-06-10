#0°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:nether_1",rotation:"NONE",mirror:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:nether_2",rotation:"NONE",mirror:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:32,name:"wnkm:nether_3",rotation:"NONE",mirror:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:nether_4",rotation:"NONE",mirror:"NONE"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#左右反転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:nether_1",rotation:"NONE",mirror:"LEFT_RIGHT"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:nether_2",rotation:"NONE",mirror:"LEFT_RIGHT"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:-32,name:"wnkm:nether_3",rotation:"NONE",mirror:"LEFT_RIGHT"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:nether_4",rotation:"NONE",mirror:"LEFT_RIGHT"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#180°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:nether_1",rotation:"CLOCKWISE_180"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:nether_2",rotation:"CLOCKWISE_180"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:-32,name:"wnkm:nether_3",rotation:"CLOCKWISE_180"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:nether_4",rotation:"CLOCKWISE_180"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#前後反転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:nether_1",rotation:"NONE",mirror:"FRONT_BACK"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:nether_2",rotation:"NONE",mirror:"FRONT_BACK"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:32,name:"wnkm:nether_3",rotation:"NONE",mirror:"FRONT_BACK"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:nether_4",rotation:"NONE",mirror:"FRONT_BACK"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air
fill 63 4 63 -63 4 -63 minecraft:bedrock

summon minecraft:armor_stand 56 17 59 {Tags:["spawnRed","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -56 17 -59 {Tags:["spawnBlue","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -56 17 59 {Tags:["spawnYellow","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 56 17 -59 {Tags:["spawnGreen","spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players reset #stagechangeing counter