scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add dusk-target
playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 4 0.8
particle minecraft:dust 1 0 0 1 ~ ~ ~ 2.5 1.5 2.5 1 300 force @a
execute as @e[tag=dusk,limit=1,sort=nearest] run function wancomatter:boss/dusk/skill0/advent