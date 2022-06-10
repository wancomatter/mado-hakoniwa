execute if data entity @s {SelectedItem:{id:"minecraft:spyglass",tag:{CustomModelData:132,Charged:1b}}} run tag @s add holding_ballista
execute if entity @s[tag=holding_ballista,tag=!complete_charge_ballista] unless entity @s[advancements={wancomatter:using_item/ballista_scope=true}] run function wancomatter:skills/crossbow/02/shot_summon
execute if entity @s[tag=complete_charge_ballista] unless entity @e[type=area_effect_cloud,tag=complete_charge_ballista_AEC] run tag @s remove complete_charge_ballista
execute unless entity @s[tag=holding_ballista] run function wancomatter:skills/crossbow/02/remove_charge
execute if entity @s[tag=holding_ballista] run tag @s remove holding_ballista
