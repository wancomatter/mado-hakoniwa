scoreboard players add @e[tag=wnkm035shulker] counter 1
execute if entity @e[tag=wnkm035shulker,scores={counter=295},limit=1] run effect give @e[tag=wnkm035shulker,scores={counter=295}] minecraft:wither 1000000 5 true
execute if entity @e[tag=wnkm035shulker,scores={counter=399..},limit=1] run kill @e[tag=wnkm035shulker,scores={counter=499..}]