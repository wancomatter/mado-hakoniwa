scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 260
scoreboard players set @s CooldownX_max 260

execute anchored eyes positioned ^ ^ ^-0.3 as @a[distance=..2.3,scores={maxHP=1..}] run function wancomatter:operation/instant_kb_resist
execute anchored eyes positioned ^ ^ ^-0.3 run scoreboard players set @a[distance=..2.3,scores={maxHP=1..}] instantDMGS_time 11
execute anchored eyes positioned ^ ^ ^-0.3 run scoreboard players set @a[distance=..2.3,scores={maxHP=1..}] instantDMGshield 100
summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:-1,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
#summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:1,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
execute anchored eyes positioned ^ ^ ^-0.3 run tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this
schedule function wancomatter:skills/057/stopsound 2t
tp @s @s
execute unless data entity @s {ActiveEffects:[{Id:25}]} run tag @s add flag
execute if entity @s[tag=flag] run effect give @s minecraft:levitation 1 0 true
execute if entity @s[tag=flag] run scoreboard players set @s levitateOperate 2
execute if entity @s[tag=flag] run tag @s remove flag

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2
particle minecraft:cloud ^ ^1 ^1 0.1 0.1 0.1 0.5 100 normal @a
particle minecraft:cloud ^ ^1 ^1 0.1 0.1 0.1 0.5 25 force @a