function wancomatter:skills/gun-ammo
execute at @s anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 0.5 2
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 1 5 force @a

execute at @s anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["aqua_gun","discharge"]}
execute at @s anchored eyes positioned ^ ^ ^1 run tp @e[tag=discharge,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge
tag @s add aqua_gun_user
scoreboard players set #dummy dummy -135
scoreboard players set #dummy subcounter2 9
scoreboard players set #- counter 6
function wancomatter:skills/recoil
execute if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/068/auto_reload