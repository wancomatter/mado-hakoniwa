execute unless data storage wnkm:version {world:1} run return fail

# 終了時は今回の試合が所有する実体だけを片付ける。
execute as @e[type=!player,tag=wnkm.owned,tag=wnkm.round] run function wnkm:entity/0.discard
scoreboard players set #game counter 0
scoreboard players set #lobby counter 1
scoreboard players reset #gametime counter
bossbar set wnkm:gametime visible false
bossbar remove bear_p
bossbar remove bear_c
bossbar remove detonator
bossbar remove dusk
bossbar remove necro
bossbar remove arctic
return 1
