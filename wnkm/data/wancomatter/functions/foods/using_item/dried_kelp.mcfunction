execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27b}]} if data entity @s Inventory[{tag:{quick_food_available:1b}}] run function wancomatter:foods/bless/quick_food_check_slot
execute if entity @s[tag=diet] run scoreboard players set #dummy HPheal 20
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players reset #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players add @s Mana 3
execute if entity @s[tag=diet] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.2f,Duration:5,Age:4,WaitTime:1,Particle:"dust 0 0 0 0",Effects:[{Id:27b,Amplifier:0b,Duration:27}]}
tag @s[tag=diet] remove diet

advancement revoke @s only wancomatter:foods/using_item/dried_kelp
