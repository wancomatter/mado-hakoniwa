# 旧版の発動条件は7 MP以上。支払いは説明どおり5 MP。
scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140

effect give @s invisibility 3 0
effect give @s speed 3 0
particle smoke ~ ~0.3 ~ 1.3 0.2 1.3 0.01 200 normal @a
particle smoke ~ ~0.3 ~ 1.3 0.2 1.3 0.01 50 force @a
playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 0.5
return 1
