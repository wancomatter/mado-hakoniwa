execute if score @s hurtWeaponNumber matches -1 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(凛冽に佇む親子愛) くま","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -2 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(ふわふわストライク)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -3 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(グランドクラッシュ)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -4 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(スノーレイン)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -5 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(アイシクルプラント)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -6 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(クマレーザー)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -7 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(くまくまファンネル)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -8 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(クマエクスプロージョン)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -9 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(雪崩)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -10 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(こぐまぐまスクランブル)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -11 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"selector":"@e[tag=got-kill,limit=1]"},{"text":"(北斗七死星弾)","color":"aqua"},{"text":" -> ","color":"white"},{"selector":"@s"}]

execute if score @s hurtWeaponNumber matches -11..-1 run tag @s remove flag