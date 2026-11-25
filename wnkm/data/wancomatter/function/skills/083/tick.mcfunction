scoreboard players add @s counter 1
#execute if score @s counter matches 20 run function wancomatter:skills/083/tick_second
#execute if data entity @s {a:1b} run scoreboard players add @s subcounter 1
#execute if score @s subcounter matches 20.. run function wancomatter:skills/083/heal

scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=p.wolf] if score #dummy playerNumber = @s playerNumber run tag @s add owner
execute if score @s HP matches 151.. run particle dust{color:[0,1,0],scale:1} ~ ~1 ~ 1 1 1 1 1 force @a[tag=owner]
execute if score @s HP matches 101..150 run particle dust{color:[1,1,0],scale:1} ~ ~1 ~ 1 1 1 1 1 force @a[tag=owner]
execute if score @s HP matches 51..100 run particle dust{color:[1,0.5,0],scale:1} ~ ~1 ~ 1 1 1 1 1 force @a[tag=owner]
execute if score @s HP matches ..50 run particle dust{color:[1,0,0],scale:1} ~ ~1 ~ 1 1 1 1 1 force @a[tag=owner]

scoreboard players reset #dummy
tag @a[tag=owner] remove owner
