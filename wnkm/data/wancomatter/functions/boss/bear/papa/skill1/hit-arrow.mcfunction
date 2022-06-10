scoreboard players set @s hurtWeaponNumber -2
scoreboard players operation @s hurtByNumber = @e[tag=bear_p,limit=1] playerNumber
execute unless score #difficult counter matches 2..4 run effect give @s minecraft:slowness 5 1
execute if score #difficult counter matches 2 run effect give @s minecraft:slowness 6 2
execute if score #difficult counter matches 3 run effect give @s minecraft:slowness 8 4
execute if score #difficult counter matches 4 run effect give @s minecraft:slowness 10 6
execute unless score #difficult counter matches 2..4 run effect give @s minecraft:levitation 5 0
execute if score #difficult counter matches 2 run effect give @s minecraft:levitation 6 1
execute if score #difficult counter matches 3 run effect give @s minecraft:levitation 8 2
execute if score #difficult counter matches 4 run effect give @s minecraft:levitation 10 3
scoreboard players operation @s boss_hate /= #2 counter
scoreboard players operation @s boss_hate2 /= #2 counter
advancement revoke @s only wancomatter:boss/bear_arrow