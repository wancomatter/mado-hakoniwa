execute as @a[gamemode=!spectator,scores={maxHP=1..}] run scoreboard players operation #dummy dummy > @s boss_hate
execute as @a[gamemode=!spectator,scores={maxHP=1..}] if score @s boss_hate >= #dummy dummy at @s run summon marker ~ ~ ~ {Tags:["discharge"]}
summon marker ~ ~7 ~ {Tags:["discharge2","b1lightning"]}
tag @e[tag=discharge,limit=1,sort=nearest] add this
kill @e[tag=discharge,tag=!this]
scoreboard players operation @e[tag=discharge2,limit=1] teamNumber = @s teamNumber
execute as @e[tag=discharge2] at @s facing entity @e[tag=discharge,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute if score #difficult counter matches 3 as @e[tag=discharge2] run scoreboard players set @s counter 5
execute if score #difficult counter matches 4 as @e[tag=discharge2] run scoreboard players set @s counter 10
execute if score @s HP <= @s maxMana unless score #difficult counter matches 4 as @e[tag=discharge2] run scoreboard players add @s counter 5
execute if score @s HP <= @s maxMana if score #difficult counter matches 4 as @e[tag=discharge2] run scoreboard players add @s counter 3
execute at @e[tag=discharge] run particle minecraft:witch ~ ~ ~ 1 1 1 1 100 normal @a
execute at @e[tag=discharge] run particle minecraft:witch ~ ~ ~ 1 1 1 1 25 force @a
execute at @e[tag=discharge] run particle minecraft:block_marker barrier ~ ~ ~ 1 1 1 1 16 normal @a
execute at @e[tag=discharge] run particle minecraft:block_marker barrier ~ ~ ~ 1 1 1 1 4 force @a
execute at @e[tag=discharge] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3 2
execute at @e[tag=discharge] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 3 2
kill @e[tag=discharge]
tag @e[tag=discharge2] remove discharge2