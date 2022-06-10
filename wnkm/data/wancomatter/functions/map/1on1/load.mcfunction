#ロビー拡張
fill 16 81 16 -16 64 -16 air replace minecraft:barrier

#1on1用看板の設置
function wancomatter:game/1on1/set_sign/1_ruin
function wancomatter:game/1on1/set_sign/2_dream
function wancomatter:game/1on1/set_sign/3_mine
function wancomatter:game/1on1/set_sign/4_cake

#ruin
setblock 80 24 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:1,posZ:-32,name:"wnkm:1on1/ruin_1",rotation:"NONE"}
setblock 80 23 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:2,posZ:-32,name:"wnkm:1on1/ruin_2",rotation:"NONE"}
setblock 80 22 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:30,posY:3,posZ:30,name:"wnkm:1on1/ruin_1",rotation:"CLOCKWISE_180"}
setblock 80 21 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-2,posY:4,posZ:30,name:"wnkm:1on1/ruin_2",rotation:"CLOCKWISE_180"}
fill 81 21 0 81 24 0 minecraft:redstone_block
fill 80 21 0 81 24 0 minecraft:air

#dream
setblock -80 24 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:32,sizeZ:48,posX:0,posY:1,posZ:0,name:"wnkm:1on1/dream_1",rotation:"NONE"}
setblock -80 23 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:32,sizeZ:48,posX:0,posY:2,posZ:-47,name:"wnkm:1on1/dream_2",rotation:"NONE"}
setblock -80 22 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:32,sizeZ:48,posX:-47,posY:3,posZ:-47,name:"wnkm:1on1/dream_3",rotation:"NONE"}
setblock -80 21 0 minecraft:structure_block{mode:"LOAD",sizeX:48,sizeY:32,sizeZ:48,posX:-47,posY:4,posZ:0,name:"wnkm:1on1/dream_4",rotation:"NONE"}
fill -81 21 0 -81 24 0 minecraft:redstone_block
fill -80 21 0 -81 24 0 minecraft:air

#mine
setblock 0 24 80 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:1on1/mine_1",rotation:"NONE"}
setblock 0 23 80 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:2,posZ:-31,name:"wnkm:1on1/mine_2",rotation:"NONE"}
setblock 0 22 80 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:3,posZ:0,name:"wnkm:1on1/mine_1",rotation:"CLOCKWISE_180"}
setblock 0 21 80 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:31,name:"wnkm:1on1/mine_2",rotation:"CLOCKWISE_180"}
fill 1 21 80 1 24 80 minecraft:redstone_block
fill 0 21 80 1 24 80 minecraft:air
fill 31 56 49 -31 56 111 minecraft:air replace minecraft:barrier

#cake
setblock 0 24 -80 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:1,posZ:0,name:"wnkm:1on1/cake_1",rotation:"NONE"}
setblock 0 23 -80 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:1on1/cake_2",rotation:"NONE"}
setblock 0 22 -80 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:-32,name:"wnkm:1on1/cake_3",rotation:"NONE"}
setblock 0 21 -80 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:1on1/cake_4",rotation:"NONE"}
fill 1 21 -80 1 24 -80 minecraft:redstone_block
fill 0 21 -80 1 24 -80 minecraft:air
fill -32 56 -111 31 56 -49 minecraft:air replace minecraft:barrier

#scoreboard players reset #stagechangeing counter