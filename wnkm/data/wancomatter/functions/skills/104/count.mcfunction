scoreboard players add @s s104count 1
execute unless data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:104}}} run scoreboard players reset @s s104count
execute unless predicate wancomatter:is_sneaking run scoreboard players reset @s s104count
execute unless score @s s104count matches 1.. run function wancomatter:skills/104/charge_end
execute if score @s s104count matches 1.. run function wancomatter:skills/104/highlight
