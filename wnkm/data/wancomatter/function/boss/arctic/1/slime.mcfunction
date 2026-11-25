#Size:1のslimeの判定はだいたい半径1.1
summon minecraft:slime ~ -10 ~ {ActiveEffects:[{Amplifier:127b,Duration:2147483647,Id:14,ShowParticles:0b}],DeathTime:19s,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Size:3,Tags:["this","b4slime","b4slime1","wnkm.owned","wnkm.round"],active_effects:[{amplifier:127b,duration:2147483647,id:"minecraft:invisibility",show_particles:0b}],equipment:{mainhand:{components:{"minecraft:attribute_modifiers":[],"minecraft:enchantments":{"minecraft:efficiency":5}},count:1,id:"minecraft:iron_axe"}},CustomName:{color:"aqua",text:"白勢の戦神 アークト"}}
tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this
