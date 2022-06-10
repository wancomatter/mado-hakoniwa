playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 0.5 2
execute unless score @s Cooldown_slot matches 8.. run scoreboard players add @s Cooldown_slot 1
tag @s add 097dummy
execute if score @s Cooldown_slot matches 8.. as @a[distance=..4.0,scores={maxHP=1..},nbt={HurtTime:0s}] unless score @s teamNumber = @e[tag=097dummy,limit=1,sort=nearest] teamNumber positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=097dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.6] run tag @s add hit
execute if score @s Cooldown_slot matches 8.. as @a[distance=..4.0,scores={maxHP=1..},nbt={HurtTime:0s}] unless score @s teamNumber = @e[tag=097dummy,limit=1,sort=nearest] teamNumber run function wancomatter:boss/bear/child/skill6/eyes-check
tag @s remove 097dummy

execute at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0 1 normal @a
function wancomatter:boss/bear/child/skill6/reflect
execute at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0 1 force @a
function wancomatter:boss/bear/child/skill6/reflect


execute if entity @a[tag=hit,limit=1] as @a[tag=hit] at @s run function wancomatter:boss/bear/child/skill6/hit

execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1
scoreboard players remove @s counter 1
execute unless score @s counter matches 1.. run kill @s