execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=097dummy,limit=1,sort=nearest] teamNumber positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run tag @s add 097
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function wancomatter:skills/069/hit
execute if entity @s[tag=097] run tag @s remove 097

scoreboard players set @s dummy 10
function wancomatter:skills/069/teleport
execute if score @s dummy matches ..-1 at @s run function wancomatter:skills/069/reflect-0
