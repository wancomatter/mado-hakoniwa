function wancomatter:skills/gun-ammo
execute at @s anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 2
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 40 normal @a
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 10 force @a

execute at @s anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["mana-gun","discharge"]}
execute at @s anchored eyes positioned ^ ^ ^1 run tp @e[tag=discharge,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge
tag @s add mana_gun_user
scoreboard players set #dummy dummy -400
function wancomatter:skills/recoil
execute if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/005/auto_reload