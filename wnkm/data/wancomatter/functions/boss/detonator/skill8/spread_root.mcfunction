execute store result score #dummy counter run data get entity @e[tag=detonator,limit=1] Pos[0] 10
execute store result score #dummy subcounter run data get entity @e[tag=detonator,limit=1] Pos[2] 10
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 4 1.5
particle minecraft:poof ~ ~ ~ 1 1 1 2 200 force @a
particle minecraft:poof ~ ~ ~ 1 1 1 2 500 force @a
function wancomatter:boss/detonator/skill8/spreadarrow
scoreboard players reset #dummy