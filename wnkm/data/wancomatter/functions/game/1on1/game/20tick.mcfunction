tag @s add this
execute as @a[tag=1on1_battle] if score @s playerNumber = @e[tag=this,limit=1] Cooldown1 run tag @s add now1
execute as @a[tag=1on1_battle] if score @s playerNumber = @e[tag=this,limit=1] Cooldown2 run tag @s add now2
tag @s remove this

scoreboard players remove @s subcounter2 1
execute if score @s dummy matches 1 positioned 40 25 -40 run tag @a[dx=70,dy=50,dz=80] add show
execute if score @s dummy matches 1 run function wancomatter:game/1on1/bossbar/show/1_ruin
execute if score @s dummy matches 2 positioned -120 25 -40 run tag @a[dx=80,dy=50,dz=80] add show
execute if score @s dummy matches 2 run function wancomatter:game/1on1/bossbar/show/2_dream
execute if score @s dummy matches 3 positioned -40 25 39 run tag @a[dx=80,dy=50,dz=70] add show
execute if score @s dummy matches 3 run function wancomatter:game/1on1/bossbar/show/3_mine
execute if score @s dummy matches 4 positioned -40 25 -120 run tag @a[dx=80,dy=50,dz=80] add show
execute if score @s dummy matches 4 run function wancomatter:game/1on1/bossbar/show/4_cake
scoreboard players set @s counter 0
tag @a[tag=now1] remove now1
tag @a[tag=now2] remove now2

execute if score @s subcounter2 matches 60 run tellraw @a[tag=show] ["",{"text":"[1on1]","color":"gold"},{"text":" 残り60秒です。"}]
execute if score @s subcounter2 matches 30 run tellraw @a[tag=show] ["",{"text":"[1on1]","color":"gold"},{"text":" 残り30秒です。"}]
execute if score @s subcounter2 matches 10 run tellraw @a[tag=show] ["",{"text":"[1on1]","color":"gold"},{"text":" 残り10秒です。"}]
execute if score @s subcounter2 matches 1..5 run tellraw @a[tag=show] ["",{"text":"[1on1] ","color":"gold"},{"score":{"name":"@s","objective":"subcounter2"}}]
execute if score @s subcounter2 matches 1..5 as @a[tag=show] at @s run playsound minecraft:block.iron_door.close master @s ~ ~-100 ~ 0 1.5 1
tag @a[tag=show] remove show
execute if score @s subcounter2 matches 0 run function wancomatter:game/1on1/game/result



