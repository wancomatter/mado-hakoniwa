execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27}]} if data entity @s Inventory[{tag:{quick_food_available:1b}}] run function wancomatter:foods/bless/quick_food_check_slot
execute if entity @s[tag=diet] run scoreboard players add @s Mana 4
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 1 0
tag @s[tag=diet] remove diet

advancement revoke @s only wancomatter:foods/using_item/cookie
