execute store result score #dummy dummy run data get entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:106}}].tag.usedSkillSlot
execute if score #dummy dummy matches 0 run scoreboard players operation #dummy counter = @s Cooldown1
execute if score #dummy dummy matches 1 run scoreboard players operation #dummy counter = @s Cooldown2
execute if score #dummy dummy matches 2 run scoreboard players operation #dummy counter = @s Cooldown3
execute if score #dummy dummy matches 3 run scoreboard players operation #dummy counter = @s Cooldown4
execute if score #dummy dummy matches 4 run scoreboard players operation #dummy counter = @s Cooldown5
execute if score #dummy dummy matches 5 run scoreboard players operation #dummy counter = @s Cooldown6
execute if score #dummy dummy matches 6 run scoreboard players operation #dummy counter = @s Cooldown7
execute if score #dummy dummy matches 7 run scoreboard players operation #dummy counter = @s Cooldown8
execute if score #dummy dummy matches 8 run scoreboard players operation #dummy counter = @s Cooldown9
execute if score #dummy dummy matches 0..8 run scoreboard players operation #dummy counter /= #4 counter
execute if score #dummy dummy matches 0 run scoreboard players operation @s Cooldown1 = #dummy counter
execute if score #dummy dummy matches 1 run scoreboard players operation @s Cooldown2 = #dummy counter
execute if score #dummy dummy matches 2 run scoreboard players operation @s Cooldown3 = #dummy counter
execute if score #dummy dummy matches 3 run scoreboard players operation @s Cooldown4 = #dummy counter
execute if score #dummy dummy matches 4 run scoreboard players operation @s Cooldown5 = #dummy counter
execute if score #dummy dummy matches 5 run scoreboard players operation @s Cooldown6 = #dummy counter
execute if score #dummy dummy matches 6 run scoreboard players operation @s Cooldown7 = #dummy counter
execute if score #dummy dummy matches 7 run scoreboard players operation @s Cooldown8 = #dummy counter
execute if score #dummy dummy matches 8 run scoreboard players operation @s Cooldown9 = #dummy counter
scoreboard players reset #dummy
execute positioned as @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.23 2
execute as @e[tag=now-dagger] run data merge entity @s {Glowing:0b}
kill @e[tag=now-dagger]