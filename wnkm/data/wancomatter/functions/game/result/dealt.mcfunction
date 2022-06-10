scoreboard players add #result_work counter 1
scoreboard players set #result_work total_dealt 0
scoreboard players operation #result_work total_dealt > @a[scores={total_dealt=1..}] total_dealt
execute as @a[scores={total_dealt=1..}] if score @s total_dealt = #result_work total_dealt run tag @s add ranked
scoreboard players operation #result_work subcounter = #result_work total_dealt
scoreboard players operation #result_work subcounter %= #10 counter
scoreboard players operation #result_work total_dealt /= #10 counter
tellraw @a [{"score":{"name":"#result_work","objective":"counter"}},{"text":"位 "},{"selector":"@a[tag=ranked]"},{"text":" "},{"score":{"name":"#result_work","objective":"total_dealt"}},{"text":"."},{"score":{"name":"#result_work","objective":"subcounter"}}]
scoreboard players reset @a[tag=ranked] total_dealt
tag @a[tag=ranked] remove ranked
execute unless score #result_work counter matches 10.. if entity @a[scores={total_dealt=1..},limit=1] run function wancomatter:game/result/dealt