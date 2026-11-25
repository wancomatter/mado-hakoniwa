
execute if entity @e[tag=shulker_lift_stand,limit=1] as @e[tag=shulker_lift_stand] at @s positioned ^ ^ ^-0.41 if block ~ 6 ~ minecraft:magenta_glazed_terracotta[facing=west] at @s run tp @s ~ ~ ~ -90 0
execute if entity @e[tag=shulker_lift_stand,limit=1] as @e[tag=shulker_lift_stand] at @s positioned ^ ^ ^-0.41 if block ~ 6 ~ minecraft:magenta_glazed_terracotta[facing=east] at @s run tp @s ~ ~ ~ 90 0
execute if entity @e[tag=shulker_lift_stand,limit=1] as @e[tag=shulker_lift_stand] at @s rotated as @e[type=shulker,limit=1,sort=nearest,distance=..0.1] run tp @s ^ ^ ^0.1

execute if entity @e[tag=shulker_rotating_lift_o,limit=1] as @e[tag=shulker_rotating_lift_o] at @s run function wancomatter:game/pvp/rotating_rift
execute if entity @e[tag=boatStand,limit=1] as @e[tag=boatStand] at @s run function wancomatter:game/pvp/boat_stand
execute if entity @e[tag=jumpHorseStand,limit=1] as @e[tag=jumpHorseStand] at @s run function wancomatter:game/pvp/jumphorse/stand
execute if entity @e[tag=jumpHorseStand_o1,limit=1] as @e[tag=jumpHorseStand_o1] at @s run function wancomatter:game/pvp/jumphorse/stand_o1
execute if entity @e[tag=jumpHorseStand_o2,limit=1] as @e[tag=jumpHorseStand_o2] at @s run function wancomatter:game/pvp/jumphorse/stand_o2
execute if entity @e[tag=jumpHorseStand,limit=1] run function wancomatter:game/pvp/jumphorse/tick
