particle sweep_attack ^ ^ ^0.2 0 0 0 0 1 normal @a
particle sweep_attack ^ ^ ^0.4 0 0 0 0 1 normal @a
particle sweep_attack ^ ^ ^0.6 0 0 0 0 1 normal @a
particle sweep_attack ^ ^ ^0.8 0 0 0 0 1 normal @a
particle sweep_attack ^ ^ ^1.0 0 0 0 0 1 force @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^1.2 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^1.4 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^1.6 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^1.8 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^2.0 0 0 0 0 1 force @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^2.2 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^2.4 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^2.6 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^2.8 0 0 0 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^3.0 0 0 0 0 1 force @a
particle sweep_attack ^ ^ ^0.2 0.5 0.5 0.5 0 1 normal @a
particle sweep_attack ^ ^ ^0.4 0.5 0.5 0.5 0 1 normal @a
particle sweep_attack ^ ^ ^0.6 0.5 0.5 0.5 0 1 normal @a
particle sweep_attack ^ ^ ^0.8 0.5 0.5 0.5 0 1 normal @a
particle sweep_attack ^ ^ ^1.0 0.5 0.5 0.5 0 1 force @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^1.2 0.5 0.5 0.5 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^1.4 0.5 0.5 0.5 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^1.6 0.5 0.5 0.5 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^1.8 0.5 0.5 0.5 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air run particle sweep_attack ^ ^ ^2.0 0.5 0.5 0.5 0 1 force @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^2.2 0.5 0.5 0.5 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^2.4 0.5 0.5 0.5 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^2.6 0.5 0.5 0.5 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^2.8 0.5 0.5 0.5 0 1 normal @a
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air run particle sweep_attack ^ ^ ^3.0 0.5 0.5 0.5 0 1 force @a

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 0.8 0.8
scoreboard players remove #dummy counter 1
execute if block ^ ^ ^1 #wancomatter:air if block ^ ^ ^2 #wancomatter:air if block ^ ^ ^3 #wancomatter:air if score #dummy counter matches 1.. positioned ^ ^ ^3.0 run function wancomatter:skills/107/slash/line-sweep