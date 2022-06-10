scoreboard players add @s counter 1
execute if score @s subcounter matches 1.. run scoreboard players remove @s subcounter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add this2
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this2,distance=..2] run tag @s add hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this2,distance=..2] run tag @s add hit
tag @s remove this2
execute if entity @e[tag=hit,limit=1] unless score @s counter matches 201.. run function wancomatter:skills/117/hit-entity
execute if entity @e[tag=hit,limit=1] if score @s counter matches 201.. run function wancomatter:skills/117/hit-entity2

execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add this
execute if score @s counter matches 7..200 unless entity @a[tag=this,scores={holdItem=118},limit=1] run scoreboard players set @s counter 201
execute if score @s counter matches ..200 run function wancomatter:skills/117/rotate
execute if score @s counter matches 201 at @a[tag=this,limit=1] run function wancomatter:skills/117/pull
execute if score @s counter matches 202.. store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 106.61538461538461538461538461539
execute if score @s counter matches 202.. store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 106.61538461538461538461538461539
execute if score @s counter matches 201.. if data entity @s {OnGround:1b} run scoreboard players add @s counter 4
execute anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[tag=this,limit=1,sort=nearest] feet run function wancomatter:skills/117/line
execute if score @s counter matches 270.. run function wancomatter:skills/117/end
tag @a[tag=this] remove this

scoreboard players reset #dummy
execute if score @s counter matches 270.. run kill @s