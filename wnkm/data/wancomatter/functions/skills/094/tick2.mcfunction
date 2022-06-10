playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1.5 2

scoreboard players add @s counter 1
scoreboard players set @s dummy 0
execute if score @s counter matches ..11 rotated 0 0 run function wancomatter:skills/094/buff-particle