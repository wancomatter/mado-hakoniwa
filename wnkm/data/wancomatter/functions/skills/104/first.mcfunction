scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160
function wancomatter:skills/104/charge_end

effect give @s minecraft:levitation 1 0 true
execute at @s if block ~ ~0.1 ~ #wancomatter:air run tp @s ~ ~0.1 ~
execute at @s if block ~ ~0.2 ~ #wancomatter:air run tp @s ~ ~0.2 ~
execute at @s if block ~ ~0.4 ~ #wancomatter:air run tp @s ~ ~0.4 ~

summon marker ~ ~ ~ {Tags:["katana-cut","stable","first"]}
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first,limit=1] counter = @s s104count
execute as @e[tag=first] run function wancomatter:skills/104/tick
tag @e[tag=first] remove first
scoreboard players reset @s s104count

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
scoreboard players reset #dummy