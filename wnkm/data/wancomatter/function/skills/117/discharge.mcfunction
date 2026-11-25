#自身のモーニングスターが存在するかどうか
tag @s add this
execute as @e[tag=blue_moon] if score @s playerNumber = @a[tag=this,limit=1,sort=nearest] playerNumber run tag @s add pull_it
tag @s remove this

execute unless entity @e[tag=pull_it,limit=1] run scoreboard players remove @s Mana 4
execute unless entity @e[tag=pull_it,limit=1] run function wancomatter:skills/117/first
execute if entity @e[tag=pull_it,limit=1] as @e[tag=pull_it] if entity @s[tag=pulled_it] run tag @s remove pull_it
execute if entity @e[tag=pull_it,limit=1] run scoreboard players set @e[tag=pull_it] counter 200
execute if entity @e[tag=pull_it,limit=1] run tag @e[tag=pull_it] add pulled_it
execute if entity @e[tag=pull_it,limit=1] run tag @e[tag=pull_it] remove pull_it
