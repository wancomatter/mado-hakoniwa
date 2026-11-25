execute unless data entity @s[gamemode=!spectator] {active_effects:[{id:"minecraft:unluck"}]} if data entity @s Inventory[{components:{"minecraft:custom_data":{quick_food_available:1b}}}] run function wancomatter:foods/bless/quick_food_check_slot
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 12 0
execute if entity @s[tag=diet] as @e[tag=bread_AEC] if score @s playerNumber = @a[tag=diet,limit=1,sort=nearest] playerNumber run kill @s
execute if entity @s[tag=diet] run summon area_effect_cloud ~ ~ ~ {Duration:305,Tags:["ini","stable","bread_AEC","wnkm.owned"],potion_duration_scale:0.25f}
execute if entity @s[tag=diet] run scoreboard players operation @e[tag=ini,limit=1,sort=nearest] playerNumber = @s playerNumber
execute if entity @s[tag=diet] run tag @e[tag=ini] remove ini
execute if entity @s[tag=diet] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
execute if entity @s[tag=diet] run particle minecraft:composter ~ ~1 ~ 1 1 1 1 80 normal @a
execute if entity @s[tag=diet] run particle minecraft:composter ~ ~1 ~ 1 1 1 1 20 force @a
execute if entity @s[tag=diet] run tag @s add eat_bread
tag @s[tag=diet] remove diet

advancement revoke @s only wancomatter:foods/using_item/bread
