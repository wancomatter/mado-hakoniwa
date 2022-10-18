function wancomatter:skills/gun-ammo
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 3 0.945
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 3 0.945
#execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.2 40 normal @a
#execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.2 10 force @a

execute store result score #dummy SelectItemSlot1 run data get entity @s SelectedItemSlot
scoreboard players remove #dummy SelectItemSlot1 4
execute if score #dummy SelectItemSlot1 matches ..-1 run scoreboard players operation #dummy SelectItemSlot1 *= #-1 counter
scoreboard players operation #dummy SelectItemSlot2 = #dummy SelectItemSlot1
execute if score #dummy SelectItemSlot1 matches 1.. run scoreboard players operation #dummy SelectItemSlot1 *= #2 counter
scoreboard players add #dummy SelectItemSlot1 1
execute if score #dummy SelectItemSlot2 matches 3 run scoreboard players add #dummy SelectItemSlot1 1
execute if score #dummy SelectItemSlot2 matches 4 run scoreboard players add #dummy SelectItemSlot1 2
scoreboard players set #dummy dummy 9
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function wancomatter:skills/025/shot-
scoreboard players operation @e[tag=shoen_init] playerNumber = @s playerNumber
scoreboard players operation @e[tag=shoen_init] teamNumber = @s teamNumber
scoreboard players operation #dummy SelectItemSlot2 *= #2 counter
scoreboard players add #dummy SelectItemSlot2 8
scoreboard players operation @e[tag=shoen_init] subcounter2 = #dummy SelectItemSlot2
tag @e[tag=shoen_init] remove shoen_init

tag @s add shoen_gun_user
scoreboard players set #dummy dummy -1600
function wancomatter:skills/recoil
execute if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/025/auto_reload
