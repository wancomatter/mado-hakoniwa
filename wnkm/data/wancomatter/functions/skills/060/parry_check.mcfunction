scoreboard players operation @s dummy = @s damageTaken
scoreboard players operation @s dummy /= #10 counter
execute unless score @s Mana >= @s dummy run function wancomatter:skills/060/fail
execute if score @s Mana >= @s dummy run function wancomatter:skills/060/parry
