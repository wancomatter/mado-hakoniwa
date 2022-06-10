scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=stoneblast_addable] if score @s playerNumber = #dummy playerNumber run tag @s remove stoneblast_addable
scoreboard players reset #dummy
kill @s