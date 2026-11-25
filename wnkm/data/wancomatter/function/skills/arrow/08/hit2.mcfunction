summon minecraft:creeper ~ -10 ~ {ExplosionRadius:2,Fuse:0,Invulnerable:1b,Tags:["this","wnkm.owned","wnkm.round"],CustomName:{bold:1b,color:"gold",italic:1b,text:"天雷の矢"}}
summon minecraft:creeper ~ -10 ~ {ExplosionRadius:2,Fuse:0,Invulnerable:1b,Tags:["this","wnkm.owned","wnkm.round"],CustomName:{bold:1b,color:"gold",italic:1b,text:"天雷の矢"}}
summon minecraft:creeper ~ -10 ~ {ExplosionRadius:2,Fuse:0,Invulnerable:1b,Tags:["this","wnkm.owned","wnkm.round"],CustomName:{bold:1b,color:"gold",italic:1b,text:"天雷の矢"}}
summon minecraft:creeper ~ -10 ~ {ExplosionRadius:2,Fuse:0,Invulnerable:1b,Tags:["this","wnkm.owned","wnkm.round"],CustomName:{bold:1b,color:"gold",italic:1b,text:"天雷の矢"}}
execute anchored eyes positioned ^ ^ ^ run tp @e[type=creeper,tag=this] ~ ~0.3 ~
tag @s add magicDamage
summon lightning_bolt ~ ~ ~ {Tags:["wnkm.owned","wnkm.round"]}
summon lightning_bolt ~ ~ ~ {Tags:["wnkm.owned","wnkm.round"]}
scoreboard players set @s instantDMGshield 40
scoreboard players set @s instantDMGS_time 2
scoreboard players operation @s hurtByNumber = @e[tag=it,limit=1] playerNumber
tag @e[tag=this] remove this
tag @s remove lightning_arrow_hit
tag @s remove hit
