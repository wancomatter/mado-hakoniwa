summon minecraft:armor_stand ~ ~ ~ {Tags:["this","b3volcano"],Invisible:1b,Silent:1b}

loot spawn 0.0 1.1 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] add vector
execute as @e[tag=vector] store result entity @s Pos[0] double 0.1 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 0.3
execute as @e[tag=vector] store result entity @s Pos[2] double 0.1 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 0.3
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 3.5 0.5
particle block lava ~ ~ ~ 0.4 0.4 0.4 1 5 force @a
particle block lava ~ ~ ~ 1 1 1 1 20 normal @a