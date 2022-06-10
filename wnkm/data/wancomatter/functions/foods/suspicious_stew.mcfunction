execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27b}]} run tag @s add diet
loot spawn ~ -10 ~ loot wancomatter:random/1-20
execute store result score #dummy counter run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.1-20"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1-20"}].Amount 10
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.1-20"}]}}}]
loot spawn ~ -10 ~ loot wancomatter:random/1-20
execute store result score #dummy subcounter2 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.1-20"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1-20"}].Amount 2.5
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.1-20"}]}}}]
execute if entity @s[tag=diet] run scoreboard players operation #dummy counter *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy counter /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy counter

execute if entity @s[tag=diet] run scoreboard players operation @s Mana += #dummy subcounter2
scoreboard players operation #dummy subcounter = #dummy counter
scoreboard players operation #dummy counter /= #10 counter
scoreboard players operation #dummy subcounter %= #10 counter
title @s[tag=diet] times 0 35 15
title @s[tag=diet] subtitle [{"text":"HP+"},{"score":{"name":"#dummy","objective":"counter"}},{"text":"."},{"score":{"name":"#dummy","objective":"subcounter"}},{"text":" MP+"},{"score":{"name":"#dummy","objective":"subcounter2"}}]
title @s[tag=diet] title ""
scoreboard players reset #dummy

execute if entity @s[tag=diet] run effect give @s minecraft:unluck 10 0
tag @s[tag=diet] remove diet

tag @s add clear_bowl
advancement revoke @s only wancomatter:foods/suspicious_stew