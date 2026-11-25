summon minecraft:slime ~ -10 ~ {ActiveEffects:[{Amplifier:127b,Duration:2147483647,Id:14,ShowParticles:0b}],DeathTime:19s,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Size:3,Tags:["this","bear_fannel_slime","bear_slime","wnkm.owned","wnkm.round"],active_effects:[{amplifier:127b,duration:2147483647,id:"minecraft:invisibility",show_particles:0b}],equipment:{mainhand:{components:{"minecraft:attribute_modifiers":[],"minecraft:enchantments":{"minecraft:efficiency":5}},count:1,id:"minecraft:iron_axe"}}}
tp @e[tag=this] @e[tag=bear_s6fannel,limit=1,sort=nearest]
tag @e[tag=this] remove this
tag @s remove hit
