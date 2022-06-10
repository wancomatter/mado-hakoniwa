execute unless score @s counter matches 20.. run scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add this2
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this2,distance=..2] run tag @s add hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this2,distance=..2] run tag @s add hit
tag @s remove this2
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/043/hit-entity

execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add this
execute unless entity @a[scores={hold_gun=43..44},distance=..18,tag=this,limit=1] if data entity @s {OnGround:1b} run scoreboard players add @s counter 5
execute unless entity @a[scores={hold_gun=43..44},distance=..18,tag=this,limit=1] run scoreboard players add @s counter 1
execute anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[tag=this,limit=1,sort=nearest] feet run function wancomatter:skills/043/line
execute if score @s counter matches 50.. run function wancomatter:skills/043/end
tag @a[tag=this] remove this

scoreboard players reset #dummy
execute if score @s counter matches 50.. run kill @s