scoreboard players operation #bless Mana = @s Mana
execute if score @s ManaReactiveHeal matches 1.. run scoreboard players set #bless counter 1
execute if score #bless counter matches 1 unless data entity @s SelectedItem.tag.magic_assist unless data entity @s SelectedItem.tag.magic_attack unless data entity @s SelectedItem.tag.magic_summon run scoreboard players set #bless counter 0
scoreboard players reset @s dummy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] store result score @s dummy run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s dummy matches 1.. run function wancomatter:skills/rod-launcher

execute if entity @s[tag=UseAwakening] run function wancomatter:skills/097/discharge
execute if entity @s[tag=UseStarBurstStream] run function wancomatter:skills/113/first

execute if entity @s[tag=!failed,tag=!special_use] unless score @s dummy matches 12 unless score @s dummy matches -6 run tag @s add magic_used
execute if entity @s[tag=!failed,tag=magic_used] if score @s CooldownX matches 1.. run function wancomatter:skills/cooldown_set
execute if entity @s[tag=!failed,tag=magic_used] if score #bless counter matches 1 run function wancomatter:general/bless/book_mana_heal
execute if entity @s[tag=failed] run tag @s remove failed


scoreboard players reset #bless
scoreboard players reset @s dummy
scoreboard players reset @s rod
