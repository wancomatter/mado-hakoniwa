execute if entity @s[scores={dummy=-2}] run particle minecraft:poof ^-2 ^ ^ 0 1 0 1 0 force @a
execute if entity @s[scores={dummy=-2}] run particle minecraft:poof ^2 ^ ^ 0 1 0 1 0 force @a
execute if entity @s[scores={dummy=-2}] rotated ~90 ~ run particle minecraft:poof ^-2 ^ ^ 0 1 0 1 0 force @a
execute if entity @s[scores={dummy=-2}] rotated ~90 ~ run particle minecraft:poof ^2 ^ ^ 0 1 0 1 0 force @a

execute if entity @s[scores={dummy=2}] run particle minecraft:poof ^-2 ^ ^ 0 -1 0 1 0 force @a
execute if entity @s[scores={dummy=2}] run particle minecraft:poof ^2 ^ ^ 0 -1 0 1 0 force @a
execute if entity @s[scores={dummy=2}] rotated ~90 ~ run particle minecraft:poof ^-2 ^ ^ 0 -1 0 1 0 force @a
execute if entity @s[scores={dummy=2}] rotated ~90 ~ run particle minecraft:poof ^2 ^ ^ 0 -1 0 1 0 force @a

execute if entity @s[scores={dummy=-1}] run particle minecraft:poof ^ ^2 ^ 1 0 0 1 0 force @a
execute if entity @s[scores={dummy=-1}] run particle minecraft:poof ^ ^-2 ^ 1 0 0 1 0 force @a
execute if entity @s[scores={dummy=-1}] run particle minecraft:poof ^ ^ ^2 1 0 0 1 0 force @a
execute if entity @s[scores={dummy=-1}] run particle minecraft:poof ^ ^ ^-2 1 0 0 1 0 force @a

execute if entity @s[scores={dummy=1}] run particle minecraft:poof ^ ^2 ^ -1 0 0 1 0 force @a
execute if entity @s[scores={dummy=1}] run particle minecraft:poof ^ ^-2 ^ -1 0 0 1 0 force @a
execute if entity @s[scores={dummy=1}] run particle minecraft:poof ^ ^ ^2 -1 0 0 1 0 force @a
execute if entity @s[scores={dummy=1}] run particle minecraft:poof ^ ^ ^-2 -1 0 0 1 0 force @a

execute if entity @s[scores={dummy=-3}] run particle minecraft:poof ^ ^2 ^ 0 0 1 1 0 force @a
execute if entity @s[scores={dummy=-3}] run particle minecraft:poof ^ ^-2 ^ 0 0 1 1 0 force @a
execute if entity @s[scores={dummy=-3}] run particle minecraft:poof ^ ^ ^2 0 0 1 1 0 force @a
execute if entity @s[scores={dummy=-3}] run particle minecraft:poof ^ ^ ^-2 0 0 1 1 0 force @a

execute if entity @s[scores={dummy=3}] run particle minecraft:poof ^ ^2 ^ 0 0 -1 1 0 force @a
execute if entity @s[scores={dummy=3}] run particle minecraft:poof ^ ^-2 ^ 0 0 -1 1 0 force @a
execute if entity @s[scores={dummy=3}] run particle minecraft:poof ^ ^ ^2 0 0 -1 1 0 force @a
execute if entity @s[scores={dummy=3}] run particle minecraft:poof ^ ^ ^-2 0 0 -1 1 0 force @a


execute if entity @s[scores={dummy=-2}] run particle minecraft:poof ^-4 ^ ^ 0 1 0 0.7 0 force @a
execute if entity @s[scores={dummy=-2}] run particle minecraft:poof ^4 ^ ^ 0 1 0 0.7 0 force @a
execute if entity @s[scores={dummy=-2}] rotated ~90 ~ run particle minecraft:poof ^-4 ^ ^ 0 1 0 0.7 0 force @a
execute if entity @s[scores={dummy=-2}] rotated ~90 ~ run particle minecraft:poof ^4 ^ ^ 0 1 0 0.7 0 force @a

execute if entity @s[scores={dummy=2}] run particle minecraft:poof ^-4 ^ ^ 0 -1 0 0.7 0 force @a
execute if entity @s[scores={dummy=2}] run particle minecraft:poof ^4 ^ ^ 0 -1 0 0.7 0 force @a
execute if entity @s[scores={dummy=2}] rotated ~90 ~ run particle minecraft:poof ^-4 ^ ^ 0 -1 0 0.7 0 force @a
execute if entity @s[scores={dummy=2}] rotated ~90 ~ run particle minecraft:poof ^4 ^ ^ 0 -1 0 0.7 0 force @a

execute if entity @s[scores={dummy=-1}] run particle minecraft:poof ^ ^4 ^ 1 0 0 0.7 0 force @a
execute if entity @s[scores={dummy=-1}] run particle minecraft:poof ^ ^-4 ^ 1 0 0 0.7 0 force @a
execute if entity @s[scores={dummy=-1}] run particle minecraft:poof ^ ^ ^4 1 0 0 0.7 0 force @a
execute if entity @s[scores={dummy=-1}] run particle minecraft:poof ^ ^ ^-4 1 0 0 0.7 0 force @a

execute if entity @s[scores={dummy=1}] run particle minecraft:poof ^ ^4 ^ -1 0 0 0.7 0 force @a
execute if entity @s[scores={dummy=1}] run particle minecraft:poof ^ ^-4 ^ -1 0 0 0.7 0 force @a
execute if entity @s[scores={dummy=1}] run particle minecraft:poof ^ ^ ^4 -1 0 0 0.7 0 force @a
execute if entity @s[scores={dummy=1}] run particle minecraft:poof ^ ^ ^-4 -1 0 0 0.7 0 force @a

execute if entity @s[scores={dummy=-3}] run particle minecraft:poof ^ ^4 ^ 0 0 1 0.7 0 force @a
execute if entity @s[scores={dummy=-3}] run particle minecraft:poof ^ ^-4 ^ 0 0 1 0.7 0 force @a
execute if entity @s[scores={dummy=-3}] run particle minecraft:poof ^ ^ ^4 0 0 1 0.7 0 force @a
execute if entity @s[scores={dummy=-3}] run particle minecraft:poof ^ ^ ^-4 0 0 1 0.7 0 force @a

execute if entity @s[scores={dummy=3}] run particle minecraft:poof ^ ^4 ^ 0 0 -1 0.7 0 force @a
execute if entity @s[scores={dummy=3}] run particle minecraft:poof ^ ^-4 ^ 0 0 -1 0.7 0 force @a
execute if entity @s[scores={dummy=3}] run particle minecraft:poof ^ ^ ^4 0 0 -1 0.7 0 force @a
execute if entity @s[scores={dummy=3}] run particle minecraft:poof ^ ^ ^-4 0 0 -1 0.7 0 force @a


scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
#敵自傷判定
execute as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-2}] positioned ~ ~2 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-2}] positioned ~ ~4 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-2}] positioned ~ ~6 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-2}] positioned ~ ~8 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit

execute if entity @s[scores={dummy=2}] positioned ~ ~-2 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=2}] positioned ~ ~-4 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=2}] positioned ~ ~-6 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=2}] positioned ~ ~-8 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit

execute if entity @s[scores={dummy=-1}] positioned ~2 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-1}] positioned ~4 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-1}] positioned ~6 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-1}] positioned ~8 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit

execute if entity @s[scores={dummy=1}] positioned ~-2 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=1}] positioned ~-4 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=1}] positioned ~-6 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=1}] positioned ~-8 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit

execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~2 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~4 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~6 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~8 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit

execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-2 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-4 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-6 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-8 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add tornado-hit

#使用者自傷判定
execute as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-2}] positioned ~ ~2 ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-2}] positioned ~ ~4 ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-2}] positioned ~ ~6 ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-2}] positioned ~ ~8 ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user

execute if entity @s[scores={dummy=2}] positioned ~ ~-2 ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=2}] positioned ~ ~-4 ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=2}] positioned ~ ~-6 ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=2}] positioned ~ ~-8 ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user

execute if entity @s[scores={dummy=-1}] positioned ~2 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-1}] positioned ~4 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-1}] positioned ~6 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-1}] positioned ~8 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user

execute if entity @s[scores={dummy=1}] positioned ~-2 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=1}] positioned ~-4 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=1}] positioned ~-6 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=1}] positioned ~-8 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user

execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~2 as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~4 as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~6 as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~8 as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user

execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-2 as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-4 as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-6 as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-8 as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add tornado-hit-user

execute if entity @a[tag=tornado-hit-user] run tag @a[tag=tornado-hit-user] add tornado-hit
