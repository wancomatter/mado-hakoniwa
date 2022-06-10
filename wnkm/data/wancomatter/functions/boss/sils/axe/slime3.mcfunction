#Size:1のslimeの判定はだいたい半径1.1
summon minecraft:slime ~ -10 ~ {CustomName:'"シルス"',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Size:3,Tags:["this","sils_slime","b5slime1"],Attributes:[{Name:generic.attack_damage,Base:13.5}],DeathTime:19s,ActiveEffects:[{Id:14,Amplifier:127b,Duration:2147483647,ShowParticles:0b}],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:5s}],AttributeModifiers:[{}]}},{}]}
tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this

