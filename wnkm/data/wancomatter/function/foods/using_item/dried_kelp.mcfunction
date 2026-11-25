execute unless data entity @s[gamemode=!spectator] {active_effects:[{id:"minecraft:unluck"}]} if data entity @s Inventory[{components:{"minecraft:custom_data":{quick_food_available:1b}}}] run function wancomatter:foods/bless/quick_food_check_slot
execute if entity @s[tag=diet] run scoreboard players set #dummy HPheal 20
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players reset #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players add @s Mana 3
execute if entity @s[tag=diet] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Amplifier:0b,Duration:27,Id:27}],Particle:"dust 0 0 0 0",Radius:0.2f,WaitTime:1,custom_particle:{color:[0.0f,0.0f,0.0f],scale:0.0f,type:"minecraft:dust"},potion_contents:{custom_effects:[{amplifier:0b,duration:27,id:"minecraft:unluck"}]},potion_duration_scale:0.25f,Tags:["wnkm.owned"]}
tag @s[tag=diet] remove diet

advancement revoke @s only wancomatter:foods/using_item/dried_kelp
