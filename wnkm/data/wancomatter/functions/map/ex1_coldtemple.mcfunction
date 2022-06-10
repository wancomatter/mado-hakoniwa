#0°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:coldtemple_1",rotation:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:coldtemple_2",rotation:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:32,name:"wnkm:coldtemple_3",rotation:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:coldtemple_4",rotation:"NONE"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#90°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:coldtemple_1",rotation:"CLOCKWISE_90"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:coldtemple_4",rotation:"CLOCKWISE_90"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:32,name:"wnkm:coldtemple_3",rotation:"CLOCKWISE_90"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:coldtemple_2",rotation:"CLOCKWISE_90"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#180°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:coldtemple_1",rotation:"CLOCKWISE_180"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:coldtemple_2",rotation:"CLOCKWISE_180"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:-32,name:"wnkm:coldtemple_3",rotation:"CLOCKWISE_180"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:coldtemple_4",rotation:"CLOCKWISE_180"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#270°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:coldtemple_1",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:coldtemple_4",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:-32,name:"wnkm:coldtemple_3",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:coldtemple_2",rotation:"COUNTERCLOCKWISE_90"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

fill -41 9 39 -39 13 41 minecraft:packed_ice
fill -41 9 -39 -39 13 -41 minecraft:packed_ice
fill 41 9 -39 39 13 -41 minecraft:packed_ice
fill -39 8 -39 -63 5 -63 air
fill 39 8 -39 63 5 -63 air
fill -39 8 39 -63 5 63 air
time set 6000
summon armor_stand 57.0 10.0 57.0 {Tags:["firstspawnStand"],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[135.0f,0.0f]}
summon armor_stand 32 17.5 32 {Tags:["spawnStand"],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[135.0f,0.0f]}
scoreboard players reset #stagechangeing counter