execute store result score #dummy dummy run data get entity @s SelectedItem.tag.CustomModelData 1
execute if score #dummy dummy matches 1..99 if predicate wancomatter:is_sneaking run function wancomatter:skills/gun-ammo-sneak-on
execute if score #dummy dummy matches 101..199 unless predicate wancomatter:is_sneaking run function wancomatter:skills/gun-ammo-sneak-off

execute store result score #dummy CooldownX run data get entity @s SelectedItem.tag.Ammo 1
execute store result score #dummy CooldownX_max run data get entity @s SelectedItem.tag.nowAmmoMax 1

scoreboard players set #dummy counter 111
scoreboard players operation #dummy counter *= #dummy CooldownX
scoreboard players operation #dummy counter /= #dummy CooldownX_max
scoreboard players operation #dummy maxHP = #dummy CooldownX
xp set @s 30 levels
xp set @s 0 points
execute if score #dummy maxHP matches 1.. if score #dummy counter matches 1.. run function wancomatter:general/cooldown-gauge
xp set @s 0 levels
scoreboard players operation #dummy maxHP = #dummy CooldownX
execute if score #dummy maxHP matches 1.. run function wancomatter:general/cooldown-level
scoreboard players reset #dummy
