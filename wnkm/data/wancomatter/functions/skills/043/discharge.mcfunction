#コスト支払い
scoreboard players remove @s Mana 4

#自身のモーニングスターが存在するかどうか
tag @s add this
execute as @e[tag=morning_star,distance=..25] if score @s playerNumber = @a[tag=this,limit=1,sort=nearest] playerNumber run tag @s add pull_it
tag @s remove this

execute unless entity @e[tag=pull_it,limit=1] run function wancomatter:skills/043/first
execute if entity @e[tag=pull_it,limit=1] run function wancomatter:skills/043/pull