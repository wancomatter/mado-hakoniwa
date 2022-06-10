scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=denkou_addable] if score @s playerNumber = #dummy playerNumber run tag @s remove denkou_addable
scoreboard players reset #dummy
kill @s