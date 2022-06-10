scoreboard players set @s damageTaken 75
tag @s add magicDamage
scoreboard players set @s hurtWeaponNumber 143
tp @s @s
execute unless entity @s[type=player] run data modify entity @s Motion[1] set value 0.3d
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"天雷の矢","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:1,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"天雷の矢","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:1,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"天雷の矢","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:1,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"天雷の矢","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:1,Tags:["this"],Invulnerable:1b}
execute facing entity @a[tag=hurtBy,limit=1] feet rotated ~ 0 anchored eyes run tp @e[type=creeper,tag=this] ^ ^-0.75 ^0.6
tag @e[tag=this] remove this

summon area_effect_cloud ~ ~ ~ {Tags:["this","lightning_arrow_AEC"],Duration:24}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
scoreboard players operation @e[tag=this,limit=1] playerNumber = @a[tag=hurtBy,limit=1] playerNumber
tag @e[tag=this,limit=1] remove this
tag @s add lightning_arrow_hit
tag @s remove hit
schedule function wancomatter:skills/arrow/08/schedule 1t