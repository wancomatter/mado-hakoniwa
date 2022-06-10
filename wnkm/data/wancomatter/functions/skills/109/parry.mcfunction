scoreboard players set @s damageTaken 0
tp @s @s
tag @s add parry_antikb
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
particle minecraft:sweep_attack ~ ~1 ~ 1 0 1 1 32 normal @a
particle minecraft:sweep_attack ~ ~1 ~ 1 0 1 1 8 force @a

execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:110}}} run scoreboard players operation @s CooldownX /= #2 counter
execute store result score #dummy dummy run data get entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:110}}].tag.usedSkillSlot
execute if score #dummy dummy matches 1 run scoreboard players operation @s Cooldown1 /= #2 counter
execute if score #dummy dummy matches 2 run scoreboard players operation @s Cooldown2 /= #2 counter
execute if score #dummy dummy matches 3 run scoreboard players operation @s Cooldown3 /= #2 counter
execute if score #dummy dummy matches 4 run scoreboard players operation @s Cooldown4 /= #2 counter
execute if score #dummy dummy matches 5 run scoreboard players operation @s Cooldown5 /= #2 counter
execute if score #dummy dummy matches 6 run scoreboard players operation @s Cooldown6 /= #2 counter
execute if score #dummy dummy matches 7 run scoreboard players operation @s Cooldown7 /= #2 counter
execute if score #dummy dummy matches 8 run scoreboard players operation @s Cooldown8 /= #2 counter
execute if score #dummy dummy matches 9 run scoreboard players operation @s Cooldown9 /= #2 counter
scoreboard players reset #dummy dummy