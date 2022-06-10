execute positioned 0 7.0 0 as @a[scores={maxHP=1..},distance=..64] if predicate wancomatter:random/0.4 run tag @s add b3s22target

execute if entity @a[tag=b3s22target,limit=1] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 5 0.5
execute if entity @a[tag=b3s22target,limit=1] run scoreboard players operation #dummy teamNumber = @s teamNumber
execute unless entity @a[tag=b3s22target,limit=1] run function wancomatter:boss/dusk/skill22/spread
execute if entity @a[tag=b3s22target,limit=1] as @a[tag=b3s22target] run function wancomatter:boss/dusk/skill22/spread_to_p
scoreboard players reset #dummy

scoreboard players set @s subcounter 0