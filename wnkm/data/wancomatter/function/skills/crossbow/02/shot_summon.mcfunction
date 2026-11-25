execute if data entity @s SelectedItem.components."minecraft:charged_projectiles"[{id:"minecraft:spectral_arrow"}] run tag @s add ballista_spectral_arrow_flag
execute unless entity @s[tag=ballista_spectral_arrow_flag] anchored eyes positioned ^ ^ ^ run summon arrow ~ ~ ~ {PierceLevel:127b,Tags:["first","wnkm.owned","wnkm.round"],damage:2.6d,item:{count:1,id:"minecraft:arrow"}}
execute if entity @s[tag=ballista_spectral_arrow_flag] anchored eyes positioned ^ ^ ^ run summon spectral_arrow ~ ~ ~ {PierceLevel:127b,Tags:["first","wnkm.owned","wnkm.round"],damage:2.6d,item:{count:1,id:"minecraft:spectral_arrow"}}
execute if entity @s[tag=ballista_spectral_arrow_flag] run tag @s remove ballista_spectral_arrow_flag
data modify entity @e[tag=first,limit=1] CustomPotionEffects set from entity @s SelectedItem.components."minecraft:charged_projectiles"[0].components."minecraft:potion_contents".custom_effects
data modify entity @e[tag=first,limit=1] Color set from entity @s SelectedItem.components."minecraft:charged_projectiles"[0].components."minecraft:custom_data".CustomPotionColor
data modify entity @e[tag=first,limit=1] Owner set from entity @s UUID

execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^3.1 {Tags:["vector","wnkm.owned","wnkm.round"]}
data modify entity @e[tag=first,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

tag @e[tag=first] remove first
tag @s remove holding_ballista
scoreboard players set @s dummy 132
function wancomatter:skills/crossbow-launcher
