# 個別データを割り当てた生成物は、IDを消す前に解放する。
execute unless entity @s[type=!player,tag=wnkm.owned] run return fail
execute if entity @s[tag=wnkm.owns_oh_my_dat,scores={OhMyDatID=1..}] run function #oh_my_dat:release
scoreboard players reset @s
return run kill @s
