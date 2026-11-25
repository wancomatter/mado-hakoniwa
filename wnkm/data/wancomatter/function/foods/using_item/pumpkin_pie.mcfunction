execute unless data entity @s[gamemode=!spectator] {active_effects:[{id:"minecraft:unluck"}]} if data entity @s Inventory[{components:{"minecraft:custom_data":{quick_food_available:1b}}}] run function wancomatter:foods/bless/quick_food_check_slot
execute if entity @s[tag=diet] run scoreboard players add @s Mana 10
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 24 0
execute if entity @s[tag=diet] run summon area_effect_cloud ~ ~ ~ {Duration:400,Tags:["ini","stable","pumpkin_pie_AEC","wnkm.owned"],potion_duration_scale:0.25f}
execute if entity @s[tag=diet] run scoreboard players operation @e[tag=ini,limit=1,sort=nearest] playerNumber = @s playerNumber
execute if entity @s[tag=diet] run tag @e[tag=ini] remove ini
execute if entity @s[tag=diet] run playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=diet] run playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=diet] run particle minecraft:portal ~ ~1 ~ 1.2 1.2 1.2 0.02 500 normal @a
execute if entity @s[tag=diet] run particle minecraft:portal ~ ~1 ~ 1.2 1.2 1.2 0.02 125 force @a
execute if entity @s[tag=diet] run tag @s add eat_pumpkin_pie
tag @s[tag=diet] remove diet

advancement revoke @s only wancomatter:foods/using_item/pumpkin_pie
