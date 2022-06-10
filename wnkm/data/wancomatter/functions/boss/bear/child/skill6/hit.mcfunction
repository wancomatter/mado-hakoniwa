summon minecraft:slime ~ -10 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Size:3,Tags:["this","bear_fannel_slime","bear_slime"],DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:0b}],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:5s}],AttributeModifiers:[{}]}},{}]}
tp @e[tag=this] @e[tag=bear_s6fannel,limit=1,sort=nearest]
tag @e[tag=this] remove this
tag @s remove hit
