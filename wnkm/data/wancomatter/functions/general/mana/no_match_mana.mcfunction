effect give @s hunger 1 255 true
scoreboard players operation @s ManaOperation = @s Mana
scoreboard players operation @s ManaOperation /= @s ManaPer20
scoreboard players remove @s ManaOperation 1
execute if entity @s[tag=bless_of_survive] run scoreboard players set @s ManaOperation 18
execute if score @s food = @s ManaOperation run effect clear @s hunger
execute if score @s food = @s ManaOperation run tag @s remove noMatchMana
