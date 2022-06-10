function wancomatter:skills/gun-ammo
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 1.89
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 40 normal @a
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 10 force @a

execute at @s anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["two_gun","discharge"]}
execute at @s anchored eyes positioned ^ ^ ^1 run tp @e[tag=discharge,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge
tag @s add two_gun_user
scoreboard players set #dummy dummy -600
function wancomatter:skills/recoil
execute if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/086/auto_reload
