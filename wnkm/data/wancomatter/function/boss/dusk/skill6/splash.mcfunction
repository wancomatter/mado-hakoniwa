summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["this","b3volcano","wnkm.owned","wnkm.round"]}

loot spawn 0.0 1.1 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] add vector
execute as @e[tag=vector] store result entity @s Pos[0] double 0.1 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 0.3
execute as @e[tag=vector] store result entity @s Pos[2] double 0.1 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 0.3
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 3.5 0.5
particle block{block_state:"minecraft:lava"} ~ ~ ~ 0.4 0.4 0.4 1 5 force @a
particle block{block_state:"minecraft:lava"} ~ ~ ~ 1 1 1 1 20 normal @a
