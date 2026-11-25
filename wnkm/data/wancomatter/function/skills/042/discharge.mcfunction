scoreboard players remove @s Mana 20
scoreboard players set @s CooldownX 1200
scoreboard players set @s CooldownX_max 1200
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["discharge","tenki","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:42},"minecraft:item_model":"wnkm:appearance/carrot_on_a_stick/42"},count:1,id:"minecraft:carrot_on_a_stick"}}}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 1 run team join Red @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 2 run team join Aqua @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 3 run team join Yellow @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 4 run team join Green @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 5 run team join Purple @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 6 run team join White @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 7 run team join Black @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 8 run team join Blue @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 9 run team join Pink @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 10 run team join Gold @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 11 run team join Gray @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 12 run team join DarkRed @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 13 run team join DarkAqua @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 14 run team join DarkGreen @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 15 run team join DarkBlue @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 16 run team join DarkGray @s
execute as @e[tag=discharge,limit=1] if score @s teamNumber matches 17 run team join noPush @s
tag @e[tag=discharge] remove discharge
