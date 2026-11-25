execute unless entity @s[tag=1on1_battle] run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":" -> "},{"selector":"@s"}]
execute if entity @s[tag=1on1_battle] run tellraw @a ["",{"text":"[1on1] ","color":"gold"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":" -> "},{"selector":"@s"}]

scoreboard players operation #dummy subcounter = @e[tag=got-kill,limit=1] HP
scoreboard players operation #dummy subcounter2 = #dummy subcounter
scoreboard players operation #dummy subcounter /= #10 counter
scoreboard players operation #dummy subcounter2 %= #10 counter
tellraw @s [{"text":"＊ ","color":"gray"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"のHPは"},{"score":{"name":"#dummy","objective":"subcounter"}},{"text":"."},{"score":{"name":"#dummy","objective":"subcounter2"}},{"text":"です"}]
