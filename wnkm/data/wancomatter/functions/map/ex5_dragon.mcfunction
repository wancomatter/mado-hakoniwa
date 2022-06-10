#0°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:dragon_canyon_1",rotation:"NONE",mirror:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:32,posX:48,posY:2,posZ:0,name:"wnkm:dragon_canyon_2",rotation:"NONE",mirror:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:32,posX:48,posY:3,posZ:-32,name:"wnkm:dragon_canyon_4",rotation:"NONE",mirror:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:dragon_canyon_3",rotation:"NONE",mirror:"NONE"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#0°回転
setblock -48 4 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:dragon_canyon_5",rotation:"NONE",mirror:"NONE"}
setblock -48 3 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:32,posX:-48,posY:2,posZ:0,name:"wnkm:dragon_canyon_6",rotation:"NONE",mirror:"NONE"}
setblock -48 2 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:32,posX:-48,posY:3,posZ:-32,name:"wnkm:dragon_canyon_8",rotation:"NONE",mirror:"NONE"}
setblock -48 1 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:48,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:dragon_canyon_7",rotation:"NONE",mirror:"NONE"}
fill -47 1 0 -47 4 0 minecraft:redstone_block
fill -47 1 0 -48 4 0 minecraft:air


time set 6000
kill @e[tag=spawnStand]
summon armor_stand 45 7 0 {Tags:["firstspawnStand"],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[90.0f,0.0f]}
summon armor_stand 26 7 0 {Tags:["spawnStand"],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[90.0f,0.0f]}
scoreboard players reset #stagechangeing counter