scoreboard players add #dummy counter 1
execute positioned 0.0 0.0 0.0 run particle minecraft:crit 0 7.6 0 ^ ^ ^1 7 0 force @a
execute positioned 0.0 0.0 0.0 run particle minecraft:crit 0 7.5 0 ^ ^ ^1 5 0 force @a
execute positioned 0.0 0.0 0.0 run particle minecraft:crit 0 7.4 0 ^ ^ ^1 3 0 force @a
execute positioned 0.0 0.0 0.0 run particle minecraft:poof 0 7.3 0 ^ ^ ^1 2.4 0 force @a
execute positioned 0.0 0.0 0.0 run particle minecraft:poof 0 7.3 0 ^ ^ ^1 1.85 0 force @a
execute positioned 0.0 0.0 0.0 run particle minecraft:poof 0 7.3 0 ^ ^ ^1 1.35 0 force @a
execute positioned 0.0 0.0 0.0 run particle minecraft:poof 0 7.3 0 ^ ^ ^1 0.9 0 force @a
execute positioned 0.0 0.0 0.0 run particle minecraft:poof 0 7.3 0 ^ ^ ^1 0.5 0 force @a

execute unless score #dummy counter matches 240.. rotated ~1.5 0 run function wancomatter:boss/dusk/skill22/circle