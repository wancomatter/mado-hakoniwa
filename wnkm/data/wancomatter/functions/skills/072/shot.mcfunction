function wancomatter:skills/gun-ammo
#execute at @s anchored eyes positioned ^ ^ ^1 run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 2
execute at @s anchored eyes positioned ^ ^ ^1 run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.8 2
execute at @s anchored eyes positioned ^ ^ ^0.5 positioned ~ ~-1 ~ run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.01 4 normal @a[distance=1..]
execute at @s anchored eyes positioned ^ ^ ^0.5 positioned ~ ~-1 ~ run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.01 1 force @a[distance=1..]

execute at @s anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["072ar","discharge"]}
execute at @s anchored eyes positioned ^ ^ ^1 run tp @e[tag=discharge,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
tag @e[tag=discharge] remove discharge
tag @s add 072ar_user
scoreboard players set #dummy dummy -230
scoreboard players set #dummy subcounter2 12
scoreboard players set #- counter 3
function wancomatter:skills/recoil
execute if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/072/auto_reload

