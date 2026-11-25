#威力=(counter(経過tick,最大値60?)+5)*5
scoreboard players operation #dummy damageTaken = @s counter
scoreboard players add #dummy damageTaken 5
scoreboard players operation #dummy damageTaken *= #7 counter
scoreboard players operation @e[tag=hit] damageTaken = #dummy damageTaken
scoreboard players operation @e[tag=hit] hurtByNumber = @s playerNumber
scoreboard players set @e[tag=hit] hurtWeaponNumber 45
tag @e[tag=hit] add magicDamage
tag @e[tag=hit] remove hit
