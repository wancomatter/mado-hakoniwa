scoreboard players add @s ManaRegenAmount 1000
scoreboard players operation #-- Mana = @s maxMana
scoreboard players remove #-- Mana 100
scoreboard players operation #-- Mana *= #2 counter
scoreboard players operation @s ManaRegenAmount += #-- Mana
scoreboard players reset #-- Mana
execute if score @s ManaRegenAmount matches 1000.. run function wancomatter:general/mana_regen2
scoreboard players remove @s ManaCount 2000
