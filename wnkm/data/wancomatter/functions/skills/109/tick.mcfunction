scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

execute if entity @a[tag=parry_antikb,limit=1] as @a[tag=parry_antikb] run tp @s @s
execute if entity @a[tag=parry_antikb,limit=1] as @a[tag=parry_antikb] run tag @s remove parry_antikb
execute if score @s counter matches 7.. as @a[tag=yggdrasil_parry] if score @s playerNumber = #dummy playerNumber run function wancomatter:skills/109/parry_end
scoreboard players reset #dummy
execute if score @s counter matches 10.. run kill @s