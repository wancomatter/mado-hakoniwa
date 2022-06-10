scoreboard players remove @s Mana 5

summon minecraft:marker ^ ^ ^ {Tags:["first","hinoki_wand"]}
execute anchored eyes run tp @e[tag=first,limit=1] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1
