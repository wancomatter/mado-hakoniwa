scoreboard players set @e[tag=shine-hit] damageTaken 100
scoreboard players operation @e[tag=shine-hit] hurtByNumber = @s playerNumber
tag @e[tag=shine-hit] add magicDamage
tag @e[tag=shine-hit] remove shine-hit