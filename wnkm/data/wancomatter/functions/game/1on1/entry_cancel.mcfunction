#実行者:プレイヤー(エントリーしている)

execute if entity @s[tag=this] run tag @s remove this
tellraw @s [{"text":"[1on1]","color":"gold"},{"text":" 募集をキャンセルしました","color":"white"}]
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=1on1_entry] if score @s playerNumber = #dummy playerNumber run kill @s
scoreboard players reset #dummy playerNumber
tag @s remove 1on1_searching