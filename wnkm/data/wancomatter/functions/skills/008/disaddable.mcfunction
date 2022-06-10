scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=fireball_addable] if score @s playerNumber = #dummy playerNumber run tag @s remove fireball_addable
scoreboard players reset #dummy
kill @s