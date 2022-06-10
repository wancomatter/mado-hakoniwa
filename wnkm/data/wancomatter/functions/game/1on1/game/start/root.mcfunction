scoreboard players operation #dummy dummy = @s dummy
execute as @e[tag=1on1_spawn] if score @s dummy = #dummy dummy at @s run fill ~-1 ~ ~-1 ~1 ~4 ~1 air replace white_stained_glass

scoreboard players set @a[tag=1on1_battle_countdown] HP 2147483647
scoreboard players set @a[tag=1on1_battle_countdown] Mana 2147483647
effect clear @a[tag=1on1_battle_countdown]
tag @a[tag=1on1_battle_countdown] remove magicDamage2
playsound minecraft:entity.wither.spawn master @a[tag=1on1_battle_countdown] 0 -100 0 0 1 1
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown1=1..}] Cooldown1 0
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown2=1..}] Cooldown2 0
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown3=1..}] Cooldown3 0
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown4=1..}] Cooldown4 0
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown5=1..}] Cooldown5 0
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown6=1..}] Cooldown6 0
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown7=1..}] Cooldown7 0
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown8=1..}] Cooldown8 0
scoreboard players set @a[tag=1on1_battle_countdown,scores={Cooldown9=1..}] Cooldown9 0
title @a[tag=1on1_battle_countdown] times 0 40 40
execute as @a[tag=1on1_battle_countdown] at @s run title @s subtitle ["",{"selector":"@a[tag=1on1_battle_countdown,limit=1,sort=nearest,distance=1..]"},{"text":"を倒せ！"}]
title @a[tag=1on1_battle_countdown] title {"text":"1on1 START","color":"red","underlined":true}

tag @a[tag=1on1_battle_countdown] remove 1on1_battle_countdown