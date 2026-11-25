tag @s add failed
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[tag=denkou] if score @s playerNumber = #dummy playerNumber run tag @s add to_tp
execute unless entity @e[tag=to_tp,limit=1] run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
execute unless entity @e[tag=to_tp,limit=1] run title @s times 0 16 10
execute unless entity @e[tag=to_tp,limit=1] run title @s subtitle [{"text":"電光がありません","color":"red"}]
execute unless entity @e[tag=to_tp,limit=1] run title @s title ""
execute if entity @e[tag=to_tp,limit=1] positioned as @e[tag=to_tp,limit=1,sort=nearest] run function wancomatter:skills/061/slash
tag @s remove denkou_addable

scoreboard players reset #dummy
