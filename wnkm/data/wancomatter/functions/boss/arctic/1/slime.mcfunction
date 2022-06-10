#Size:1のslimeの判定はだいたい半径1.1
summon minecraft:slime ~ -10 ~ {CustomName:'{"text":"白勢の戦神 アークト","color":"aqua"}',Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Size:3,Tags:["this","b4slime","b4slime1"],DeathTime:19s,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:0b}],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:5s}],AttributeModifiers:[{}]}},{}]}
tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this

