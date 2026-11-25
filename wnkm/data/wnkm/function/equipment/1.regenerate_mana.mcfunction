# エリトラ飛行中は旧版と同じく次の回復までの待ち時間をリセットする。
execute if score @s aviate matches 1.. run scoreboard players set @s ManaCount 0
execute if score @s aviate matches 1.. run scoreboard players reset @s aviate
execute if score @s Mana > @s maxMana run scoreboard players operation @s Mana = @s maxMana
execute unless score @s Mana < @s maxMana run return 0

# 補正のない旧版の回復速度は100。後から設定した正の回復速度も使える。
execute unless score @s ManaRegenCount matches -2147483648.. run scoreboard players set @s ManaRegenCount 100
scoreboard players operation @s ManaCount += @s ManaRegenCount
execute if score @s ManaCount matches 2000.. run function wnkm:equipment/3.restore_mana
