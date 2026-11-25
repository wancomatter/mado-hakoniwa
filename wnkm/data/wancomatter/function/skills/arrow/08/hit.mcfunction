scoreboard players set @s damageTaken 75
tag @s add magicDamage
scoreboard players set @s hurtWeaponNumber 143
tp @s @s
execute unless entity @s[type=player] run data modify entity @s Motion[1] set value 0.3d
summon minecraft:creeper ~ -10 ~ {ExplosionRadius:1,Fuse:0,Invulnerable:1b,Tags:["this","wnkm.owned","wnkm.round"],CustomName:{bold:1b,color:"gold",italic:1b,text:"天雷の矢"}}
summon minecraft:creeper ~ -10 ~ {ExplosionRadius:1,Fuse:0,Invulnerable:1b,Tags:["this","wnkm.owned","wnkm.round"],CustomName:{bold:1b,color:"gold",italic:1b,text:"天雷の矢"}}
summon minecraft:creeper ~ -10 ~ {ExplosionRadius:1,Fuse:0,Invulnerable:1b,Tags:["this","wnkm.owned","wnkm.round"],CustomName:{bold:1b,color:"gold",italic:1b,text:"天雷の矢"}}
summon minecraft:creeper ~ -10 ~ {ExplosionRadius:1,Fuse:0,Invulnerable:1b,Tags:["this","wnkm.owned","wnkm.round"],CustomName:{bold:1b,color:"gold",italic:1b,text:"天雷の矢"}}
execute facing entity @a[tag=hurtBy,limit=1] feet rotated ~ 0 anchored eyes run tp @e[type=creeper,tag=this] ^ ^-0.75 ^0.6
tag @e[tag=this] remove this

summon area_effect_cloud ~ ~ ~ {Duration:24,Tags:["this","lightning_arrow_AEC","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
scoreboard players operation @e[tag=this,limit=1] playerNumber = @a[tag=hurtBy,limit=1] playerNumber
tag @e[tag=this,limit=1] remove this
tag @s add lightning_arrow_hit
tag @s remove hit
schedule function wancomatter:skills/arrow/08/schedule 1t
