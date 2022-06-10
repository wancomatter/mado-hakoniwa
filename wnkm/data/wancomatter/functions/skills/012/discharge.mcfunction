scoreboard players remove @s Mana 30
execute store result score @s s12slot run data get entity @s SelectedItemSlot
tag @s add s12used
scoreboard players set @s CooldownX 400
scoreboard players set @s CooldownX_max 400

summon marker ~ ~ ~ {Tags:["hide-mode","stable","discharge"]}
effect give @s minecraft:invisibility 480 1 false
particle minecraft:smoke ~ ~1 ~ 0 0 0 1 300
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge