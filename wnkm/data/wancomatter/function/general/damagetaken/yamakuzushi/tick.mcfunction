scoreboard players operation #- playerNumber = @s playerNumber
execute as @e[scores={playerNumber=-2147483648..,maxHP=1..}] if score @s playerNumber = #- playerNumber at @s run particle block{block_state:"minecraft:stone"} ~ ~1 ~ 0 0 0 1 1 normal @a
