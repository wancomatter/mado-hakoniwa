execute if entity @e[type=skeleton_horse,tag=jumphorse_jumped,limit=1] as @e[type=skeleton_horse,tag=jumphorse_jumped] at @s run function wancomatter:game/pvp/jumphorse/horse_tick
execute as @a[gamemode=!spectator] if data entity @s {RootVehicle:{Entity:{id:"minecraft:skeleton_horse",Tags:["jumphorse0","jumphorse_ready"]}}} at @s positioned ~ ~-0.66250 ~ as @e[tag=jumphorse0,tag=jumphorse_ready,limit=1,sort=nearest] at @s run function wancomatter:game/pvp/jumphorse/jump
execute as @a[gamemode=!spectator] if data entity @s {RootVehicle:{Entity:{id:"minecraft:skeleton_horse",Tags:["jumphorse_merry","jumphorse_ready"]}}} at @s positioned ~ ~-0.66250 ~ as @e[tag=jumphorse_merry,tag=jumphorse_ready,limit=1,sort=nearest] at @s run function wancomatter:game/pvp/jumphorse/jump2

