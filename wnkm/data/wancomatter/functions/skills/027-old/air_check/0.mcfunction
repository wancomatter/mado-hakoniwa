scoreboard players set #distance counter 0
summon marker ~ ~ ~ {Tags:["distance"]}
tp @e[tag=distance,limit=1] ~ ~ ~ facing entity @s feet

function wancomatter:skills/027/air_check/1

execute if entity @s[tag=not_air] run scoreboard players set #distance counter -1
execute if entity @s[tag=not_air] run tag @s remove not_air

kill @e[tag=distance,limit=1]
