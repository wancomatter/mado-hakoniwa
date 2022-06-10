playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
title @s times 0 16 10
execute if entity @s[scores={CooldownX=1..}] run title @s subtitle [{"text":"Cooldown中です","color":"red"}]
execute unless entity @s[scores={CooldownX=1..}] run title @s subtitle [{"text":"MPが不足しています","color":"red"}]
title @s title ""
tag @s add failed