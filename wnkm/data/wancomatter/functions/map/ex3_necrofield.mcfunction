setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:necrofield_1",rotation:"NONE",mirror:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:necrofield_2",rotation:"NONE",mirror:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:-32,name:"wnkm:necrofield_3",rotation:"NONE",mirror:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:necrofield_4",rotation:"NONE",mirror:"NONE"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

setblock 13 6 2 minecraft:iron_bars[east=true,north=true,south=true,west=true]
setblock -13 6 -2 minecraft:iron_bars[east=true,north=true,south=true,west=true]
fill -30 6 -30 30 6 30 minecraft:podzol replace minecraft:soul_sand
fill 10 17 10 -10 17 -10 minecraft:barrier replace minecraft:air

time set 18000
summon armor_stand 0 7.5 29 {Tags:["firstspawnStand","spawnStand"],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[180.0f,0.0f]}
scoreboard players reset #stagechangeing counter