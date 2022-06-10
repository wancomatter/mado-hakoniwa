particle firework ^ ^ ^0.2 0 0 0 0 1 normal @a
particle firework ^ ^ ^0.4 0 0 0 0 1 normal @a
particle firework ^ ^ ^0.6 0 0 0 0 1 normal @a
particle firework ^ ^ ^0.8 0 0 0 0 1 normal @a
particle firework ^ ^ ^1.0 0 0 0 0 1 force @a
execute if block ^ ^ ^1 #wancomatter:air run particle firework ^ ^ ^1.2 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle firework ^ ^ ^1.4 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle firework ^ ^ ^1.6 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle firework ^ ^ ^1.8 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle firework ^ ^ ^2.0 0 0 0 0 1 force @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle firework ^ ^ ^2.2 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle firework ^ ^ ^2.4 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle firework ^ ^ ^2.6 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle firework ^ ^ ^2.8 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle firework ^ ^ ^3.0 0 0 0 0 1 force @a



scoreboard players remove #dummy counter 1
execute unless score #dummy counter matches 1.. run playsound minecraft:entity.wither.shoot master @a ^ ^ ^-3 2 1.43
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air if block ^ ^ ^3 #wancomatter:air if score #dummy counter matches 1.. positioned ^ ^ ^3.0 run function wancomatter:skills/107/slash/line