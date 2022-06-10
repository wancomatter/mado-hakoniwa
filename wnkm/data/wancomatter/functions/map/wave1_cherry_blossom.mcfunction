#0°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:3,posZ:0,name:"wnkm:sakura_1",rotation:"NONE"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:sakura_2",rotation:"NONE"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:32,name:"wnkm:sakura_3",rotation:"NONE"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:sakura_4",rotation:"NONE"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#90°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:3,posZ:0,name:"wnkm:sakura_1",rotation:"CLOCKWISE_90"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:sakura_4",rotation:"CLOCKWISE_90"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:32,name:"wnkm:sakura_3",rotation:"CLOCKWISE_90"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:32,name:"wnkm:sakura_2",rotation:"CLOCKWISE_90"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#180°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:3,posZ:0,name:"wnkm:sakura_1",rotation:"CLOCKWISE_180"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:2,posZ:0,name:"wnkm:sakura_2",rotation:"CLOCKWISE_180"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:-32,posY:3,posZ:-32,name:"wnkm:sakura_3",rotation:"CLOCKWISE_180"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:sakura_4",rotation:"CLOCKWISE_180"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

#270°回転
setblock 0 4 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:3,posZ:0,name:"wnkm:sakura_1",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 3 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:2,posZ:0,name:"wnkm:sakura_4",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 2 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:32,posY:3,posZ:-32,name:"wnkm:sakura_3",rotation:"COUNTERCLOCKWISE_90"}
setblock 0 1 0 minecraft:structure_block{mode:"LOAD",sizeX:32,sizeY:32,sizeZ:32,posX:0,posY:4,posZ:-32,name:"wnkm:sakura_2",rotation:"COUNTERCLOCKWISE_90"}
fill 1 1 0 1 4 0 minecraft:redstone_block
fill 0 1 0 1 4 0 minecraft:air

fill 31 5 31 -31 5 -31 minecraft:bedrock
fill 31 6 31 -31 6 -31 minecraft:dirt
schedule function wancomatter:map/wave1_schedule1 60t
###############################################
#敵mobスポーン地点共通タグ:spawnerStand
#番号振り分け:spawner1,spawner2,・・・,spawnerN
###############################################
summon minecraft:armor_stand 36 20 0 {Tags:["spawnerStand","spawner3"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 20 36 {Tags:["spawnerStand","spawner3"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -36 20 0 {Tags:["spawnerStand","spawner3"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 20 -36 {Tags:["spawnerStand","spawner3"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 3.8 18 3.8 {Tags:["spawnStand"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[-45f,0f]}

scoreboard players reset #stagechangeing counter

#summon minecraft:armor_stand 12.0 10.01 21.65 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"apple",Count:1b}]}
#summon minecraft:armor_stand 13.2 10.01 21.35 {Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"bread",Count:1b}],Rotation:[180f,0f]}