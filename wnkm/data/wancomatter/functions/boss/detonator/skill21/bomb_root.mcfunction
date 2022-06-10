particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 1 force @a
playsound minecraft:block.end_portal.spawn master @a 0 -100 0 0 1 1
execute store result score #dummy Cooldown1 run data get entity @e[tag=b1s9first,limit=1] Pos[0] 9.5
execute store result score #dummy Cooldown3 run data get entity @e[tag=b1s9first,limit=1] Pos[2] 9.5
execute as @a[scores={maxHP=1..},limit=6,sort=random] run function wancomatter:boss/detonator/skill21/bomb
scoreboard players reset #dummy
