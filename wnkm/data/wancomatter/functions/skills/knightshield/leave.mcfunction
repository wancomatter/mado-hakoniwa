scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=KnightShieldStand] if score @s playerNumber = #dummy playerNumber run kill @s
scoreboard players reset #dummy playerNumber
tag @s remove offKnightShield