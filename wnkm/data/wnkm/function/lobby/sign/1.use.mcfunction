# 看板を右クリックしたプレイヤーだけを、その看板の既存処理へ渡す。
execute if entity @s[tag=wnkm.sign.lobby] on target if entity @s[scores={wnkm.schema=1},distance=..6] at @s run function wancomatter:lobby/sign/switch
execute if entity @s[tag=wnkm.sign.ruins] if score #gamemode counter matches 10 if block ~ ~ ~ birch_sign on target if entity @s[scores={wnkm.schema=1},distance=..6] run function wancomatter:game/1on1/sign_ruins
execute if entity @s[tag=wnkm.sign.dream] if score #gamemode counter matches 10 if block ~ ~ ~ birch_sign on target if entity @s[scores={wnkm.schema=1},distance=..6] run function wancomatter:game/1on1/sign_dream
execute if entity @s[tag=wnkm.sign.mine] if score #gamemode counter matches 10 if block ~ ~ ~ birch_sign on target if entity @s[scores={wnkm.schema=1},distance=..6] run function wancomatter:game/1on1/sign_mine
execute if entity @s[tag=wnkm.sign.cake] if score #gamemode counter matches 10 if block ~ ~ ~ birch_sign on target if entity @s[scores={wnkm.schema=1},distance=..6] run function wancomatter:game/1on1/sign_cake
data remove entity @s interaction
