scoreboard players set @s Mana 0

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
#敵自傷判定
execute as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-2}] positioned ~ ~2 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-2}] positioned ~ ~4 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-2}] positioned ~ ~6 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit

execute if entity @s[scores={dummy=2}] positioned ~ ~-2 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=2}] positioned ~ ~-4 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=2}] positioned ~ ~-6 ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit

execute if entity @s[scores={dummy=-1}] positioned ~2 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-1}] positioned ~4 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-1}] positioned ~6 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-1}] positioned ~8 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit

execute if entity @s[scores={dummy=1}] positioned ~-2 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=1}] positioned ~-4 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=1}] positioned ~-6 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=1}] positioned ~-8 ~ ~ as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit

execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~2 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~4 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~6 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=-3}] positioned ~ ~ ~8 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit

execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-2 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-4 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-6 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
execute if entity @s[scores={dummy=3}] positioned ~ ~ ~-8 as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add blizzard-hit
