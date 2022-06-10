execute unless score @s counter matches 33.. run scoreboard players add @s counter 2
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=windcut_addable] if score @s playerNumber = #dummy playerNumber run tag @s add windcut_charging
execute as @a[tag=windcut_charging] at @s run particle minecraft:dust 0.5 1 0.5 1 ~ ~ ~ 1 1 1 1 4 normal @a
execute as @a[tag=windcut_charging] at @s run particle minecraft:dust 0.5 1 0.5 1 ~ ~ ~ 1 1 1 1 1 force @a
execute if score @s counter matches ..31 run effect give @a[tag=windcut_charging] minecraft:slowness 1 0
execute if score @s counter matches 32 as @a[tag=windcut_charging] at @s run function wancomatter:skills/020/maxcharge
execute if score @s counter matches 32.. run effect give @a[tag=windcut_charging] minecraft:slowness 1 1
execute as @a[tag=windcut_charging] unless data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:20}}} at @s run function wancomatter:skills/020/cancel
tag @a[tag=windcut_charging] remove windcut_charging