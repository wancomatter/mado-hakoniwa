execute at @s run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 1 1 1 1 100 force @a
execute at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[システム] You Joined The "},{"text":"Red Team","color":"red"}]
team join Red @s
function wancomatter:general/teamnumber_set