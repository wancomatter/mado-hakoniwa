scoreboard players operation #dummy HPheal = @s HPRegenAmount
scoreboard players operation #dummy HPheal *= @s healPower
scoreboard players operation #dummy HPheal /= #100 counter
scoreboard players operation @s HPheal += #dummy HPheal
scoreboard players reset #dummy HPheal
scoreboard players set @s HPCount 0