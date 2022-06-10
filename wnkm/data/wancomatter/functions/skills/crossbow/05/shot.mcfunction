execute as @e[tag=first] store result entity @s damage double 0.005 run data get entity @s damage 65
execute as @e[tag=first] run tag @s add bowgun_arrow
scoreboard players set #dummy dummy -400
scoreboard players set #dummy subcounter2 20
scoreboard players set #- counter 3
function wancomatter:skills/recoil
