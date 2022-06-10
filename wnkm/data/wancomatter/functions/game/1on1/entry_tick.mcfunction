scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=1on1_searching] if score @s playerNumber = #dummy playerNumber run tag @s add this
scoreboard players reset #dummy playerNumber
execute unless entity @a[tag=this,distance=..5.3,limit=1] as @a[tag=this] run function wancomatter:game/1on1/entry_cancel
execute if score @s counter matches 20.. run function wancomatter:game/1on1/entry_tick_20
execute if score @s subcounter matches 15.. if score @s counter matches 19.. run function wancomatter:game/1on1/entry_fail
tag @a[tag=this] remove this

execute rotated ~000 0 run particle minecraft:dust 1 0 0 1 ^ ^ ^4.8 0 0 0 1 1 force @a
execute rotated ~120 0 run particle minecraft:dust 0 1 0 1 ^ ^ ^4.8 0 0 0 1 1 force @a
execute rotated ~240 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^4.8 0 0 0 1 1 force @a
tp @s ~ ~ ~ ~7 0