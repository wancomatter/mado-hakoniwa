execute if score @s dummy matches 1 run bossbar remove wnkm:1on1/ruins
execute if score @s dummy matches 1 run bossbar remove wnkm:1on1/ruins_p1
execute if score @s dummy matches 1 run bossbar remove wnkm:1on1/ruins_p2
execute if score @s dummy matches 2 run bossbar remove wnkm:1on1/dream
execute if score @s dummy matches 2 run bossbar remove wnkm:1on1/dream_p1
execute if score @s dummy matches 2 run bossbar remove wnkm:1on1/dream_p2
execute if score @s dummy matches 3 run bossbar remove wnkm:1on1/mine
execute if score @s dummy matches 3 run bossbar remove wnkm:1on1/mine_p1
execute if score @s dummy matches 3 run bossbar remove wnkm:1on1/mine_p2
execute if score @s dummy matches 4 run bossbar remove wnkm:1on1/cake
execute if score @s dummy matches 4 run bossbar remove wnkm:1on1/cake_p1
execute if score @s dummy matches 4 run bossbar remove wnkm:1on1/cake_p2


tag @s add at_s
execute as @a[tag=1on1_battle] if score @s playerNumber = @e[tag=at_s,limit=1] Cooldown1 run tag @s add this
execute as @a[tag=1on1_battle] if score @s playerNumber = @e[tag=at_s,limit=1] Cooldown2 run tag @s add this
tag @s remove at_s
execute as @a[tag=1on1_battle] as @e[scores={playerNumber=0..},type=!player,tag=!stable] if score @s playerNumber = #dummy playerNumber run kill @s
tag @a[tag=1on1_loser] add this

scoreboard players operation #dummy playerNumber = @a[tag=this,tag=!1on1_loser,limit=1] playerNumber
execute as @e[scores={playerNumber=0..},tag=boomerang] if score @s playerNumber = #dummy playerNumber run scoreboard players set @s counter 2200
execute as @e[scores={playerNumber=0..},type=!player,tag=!stable,tag=!boomerang] if score @s playerNumber = #dummy playerNumber run kill @s
scoreboard players reset #dummy

title @a[tag=this] times 10 50 10
title @a[tag=this] subtitle " "
execute if entity @a[tag=1on1_loser] as @a[tag=this,tag=!1on1_loser,limit=1] run title @a[tag=this] title [{"selector":"@s"},{"text":" win!!","color":"white"}]
execute unless entity @a[tag=1on1_loser] as @a[tag=this,tag=!1on1_loser,limit=1] run title @a[tag=this] title [{"text":"Draw!!","color":"light_gray"}]

playsound minecraft:entity.wither.spawn master @a[tag=this] 0 -100 0 0 2 1
team leave @a[tag=this]
team join Red @a[tag=this,scores={pvpteamsaver=1}]
team join Aqua @a[tag=this,scores={pvpteamsaver=2}]
team join Yellow @a[tag=this,scores={pvpteamsaver=3}]
team join Green @a[tag=this,scores={pvpteamsaver=4}]
team join Purple @a[tag=this,scores={pvpteamsaver=5}]
team join White @a[tag=this,scores={pvpteamsaver=6}]
team join Black @a[tag=this,scores={pvpteamsaver=7}]
team join Blue @a[tag=this,scores={pvpteamsaver=8}]
team join Pink @a[tag=this,scores={pvpteamsaver=9}]
team join Gold @a[tag=this,scores={pvpteamsaver=10}]
team join Gray @a[tag=this,scores={pvpteamsaver=11}]
team join DarkRed @a[tag=this,scores={pvpteamsaver=12}]
team join DarkAqua @a[tag=this,scores={pvpteamsaver=13}]
team join DarkGreen @a[tag=this,scores={pvpteamsaver=14}]
team join DarkBlue @a[tag=this,scores={pvpteamsaver=15}]
team join DarkGray @a[tag=this,scores={pvpteamsaver=16}]
team join noPush @a[tag=this,scores={pvpteamsaver=17}]
team join spectate @a[tag=this,scores={pvpteamsaver=-1}]

tp @a[tag=this] 0 64 0
tag @a[tag=this] remove 1on1_battle
tag @a[tag=this] remove 1on1_loser
tag @a[tag=this] remove this

execute if score @s dummy matches 1 run function wancomatter:game/1on1/set_sign/1_ruin
execute if score @s dummy matches 2 run function wancomatter:game/1on1/set_sign/2_dream
execute if score @s dummy matches 3 run function wancomatter:game/1on1/set_sign/3_mine
execute if score @s dummy matches 4 run function wancomatter:game/1on1/set_sign/4_cake

kill @s