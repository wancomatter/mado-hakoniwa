scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy dummy = @s dummy
execute as @e[tag=portal_stand] if score @s playerNumber = #dummy playerNumber run tag @s add other_portal
tag @s remove other_portal
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute as @a[gamemode=!spectator,dx=0,dy=0,dz=0] at @s run function wancomatter:skills/056/use_portal
tag @e[tag=other_portal] remove other_portal