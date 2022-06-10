execute at @s run particle minecraft:dust 0 1 0 1 ~ ~1 ~ 1 1 1 1 100 force @a
execute at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[システム] You Joined The "},{"text":"Green Team","color":"green"}]
team join Green @s
function wancomatter:general/teamnumber_set