setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:48,posX:0,posY:1,posZ:0,name:"wnkm:crimson_1",rotation:"NONE",mirror:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:48,posX:0,posY:2,posZ:-47,name:"wnkm:crimson_2",rotation:"NONE",mirror:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:48,posX:-47,posY:3,posZ:-47,name:"wnkm:crimson_3",rotation:"NONE",mirror:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:48,posX:-47,posY:4,posZ:0,name:"wnkm:crimson_4",rotation:"NONE",mirror:"NONE"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

time set 12500
summon armor_stand 0 7.5 29 {Tags:["firstspawnStand","spawnStand"],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[180.0f,0.0f]}
scoreboard players reset #stagechangeing counter