scoreboard players add #result_work counter 1
scoreboard players set #result_work total_taken 0
scoreboard players operation #result_work total_taken > @a[scores={total_taken=1..}] total_taken
execute as @a[scores={total_taken=1..}] if score @s total_taken = #result_work total_taken run tag @s add ranked
scoreboard players operation #result_work subcounter = #result_work total_taken
scoreboard players operation #result_work subcounter %= #10 counter
scoreboard players operation #result_work total_taken /= #10 counter
tellraw @a [{"score":{"name":"#result_work","objective":"counter"}},{"text":"位 "},{"selector":"@a[tag=ranked]"},{"text":" "},{"score":{"name":"#result_work","objective":"total_taken"}},{"text":"."},{"score":{"name":"#result_work","objective":"subcounter"}}]
scoreboard players reset @a[tag=ranked] total_taken
tag @a[tag=ranked] remove ranked
execute unless score #result_work counter matches 10.. if entity @a[scores={total_taken=1..},limit=1] run function wancomatter:game/result/taken