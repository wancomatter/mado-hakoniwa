scoreboard players add @s counter 1
execute if score @s counter matches 1 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Small:1b,Tags:["meteor_stand_aoc","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:200},"minecraft:item_model":"wnkm:appearance/golden_hoe/200"},count:1,id:"minecraft:golden_hoe"}}}
execute if score @s counter matches 2 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Small:1b,Tags:["meteor_stand_aoc","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:201},"minecraft:item_model":"wnkm:appearance/golden_hoe/201"},count:1,id:"minecraft:golden_hoe"}}}
execute if score @s counter matches 3 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Small:1b,Tags:["meteor_stand_aoc","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:202},"minecraft:item_model":"wnkm:appearance/golden_hoe/202"},count:1,id:"minecraft:golden_hoe"}}}
execute if score @s counter matches 4 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Small:1b,Tags:["meteor_stand_aoc","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:203},"minecraft:item_model":"wnkm:appearance/golden_hoe/203"},count:1,id:"minecraft:golden_hoe"}}}
execute if score @s counter matches 5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Small:1b,Tags:["meteor_stand_aoc","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:204},"minecraft:item_model":"wnkm:appearance/golden_hoe/204"},count:1,id:"minecraft:golden_hoe"}}}
execute if score @s counter matches 6 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Small:1b,Tags:["meteor_stand_aoc","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:205},"minecraft:item_model":"wnkm:appearance/golden_hoe/205"},count:1,id:"minecraft:golden_hoe"}}}
execute if score @s counter matches 7 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Small:1b,Tags:["meteor_stand_aoc","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:206},"minecraft:item_model":"wnkm:appearance/golden_hoe/206"},count:1,id:"minecraft:golden_hoe"}}}
execute if score @s counter matches 8 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Small:1b,Tags:["meteor_stand_aoc","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:207},"minecraft:item_model":"wnkm:appearance/golden_hoe/207"},count:1,id:"minecraft:golden_hoe"}}}

execute if score @s counter matches ..7 run scoreboard players set @e[tag=first] counter 4
execute if score @s counter matches 8 run scoreboard players set @e[tag=first] counter 203

tag @e[tag=first] remove first
execute if score @s counter matches 8.. run kill @s
