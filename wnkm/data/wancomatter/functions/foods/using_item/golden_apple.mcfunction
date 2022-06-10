execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27}]} if data entity @s Inventory[{tag:{quick_food_available:1b}}] run function wancomatter:foods/bless/quick_food_check_slot
execute if entity @s[tag=diet] run scoreboard players set #dummy HPheal 200
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players reset #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players add @s Mana 30
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 96 0
execute if entity @s[tag=diet] run effect give @s minecraft:luck 60 1
tag @s[tag=diet] remove diet
tag @s add eat_golden_apple

advancement revoke @s only wancomatter:foods/using_item/golden_apple
