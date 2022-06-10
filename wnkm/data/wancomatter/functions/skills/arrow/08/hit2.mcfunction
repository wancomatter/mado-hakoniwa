summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"天雷の矢","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:2,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"天雷の矢","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:2,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"天雷の矢","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:2,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"天雷の矢","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:2,Tags:["this"],Invulnerable:1b}
execute anchored eyes positioned ^ ^ ^ run tp @e[type=creeper,tag=this] ~ ~0.3 ~
tag @s add magicDamage
summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~ ~
scoreboard players set @s instantDMGshield 40
scoreboard players set @s instantDMGS_time 2
scoreboard players operation @s hurtByNumber = @e[tag=it,limit=1] playerNumber
tag @e[tag=this] remove this
tag @s remove lightning_arrow_hit
tag @s remove hit