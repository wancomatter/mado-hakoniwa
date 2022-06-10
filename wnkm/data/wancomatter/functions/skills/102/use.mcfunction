scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=poseidon_stand] if score @s playerNumber = #dummy playerNumber run kill @s
summon marker 0 0 0 {Tags:["discharge","stable","poseidon_stand"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy