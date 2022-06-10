playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 2
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 2 2

scoreboard players set @s subcounter 0
tag @s add it
execute as @a[tag=user] anchored eyes positioned ^ ^ ^0.4 as @e[tag=it] run function wancomatter:skills/092/razer_loop
tag @s remove it