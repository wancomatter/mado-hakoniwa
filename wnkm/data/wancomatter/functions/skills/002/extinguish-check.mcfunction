scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add now-extinguish
execute as @a[tag=now-extinguish] unless data entity @s {Inventory:[{tag:{addedFlame:1b}}]} run tag @s remove now-extinguish
scoreboard players reset #dummy playerNumber
execute if entity @a[tag=now-extinguish,limit=1] run function wancomatter:skills/002/extinguish