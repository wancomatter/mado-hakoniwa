tag @s add this
execute as @a[tag=1on1_battle] if score @s playerNumber = @e[tag=this,limit=1] Cooldown1 run tag @s add 1on1_battle_countdown
execute as @a[tag=1on1_battle] if score @s playerNumber = @e[tag=this,limit=1] Cooldown2 run tag @s add 1on1_battle_countdown
tag @s remove this

#ステージに応じたtpの処理
execute if score @s counter matches -60 run function wancomatter:game/1on1/game/tp/root

effect give @a[tag=1on1_battle_countdown] minecraft:luck 4 9 true
execute if score @s counter matches -58 run title @a[tag=1on1_battle_countdown] title {"text":"R","color":"gold"}
execute if score @s counter matches -56 run title @a[tag=1on1_battle_countdown] title {"text":"Re","color":"gold"}
execute if score @s counter matches -54 run title @a[tag=1on1_battle_countdown] title {"text":"Rea","color":"gold"}
execute if score @s counter matches -52 run title @a[tag=1on1_battle_countdown] title {"text":"Read","color":"gold"}
execute if score @s counter matches -50 run title @a[tag=1on1_battle_countdown] title {"text":"Ready","color":"gold"}
execute if score @s counter matches -40 run title @a[tag=1on1_battle_countdown] title {"text":"Ready.","color":"gold"}
execute if score @s counter matches -30 run title @a[tag=1on1_battle_countdown] title {"text":"Ready..","color":"gold"}
execute if score @s counter matches -20 run title @a[tag=1on1_battle_countdown] title {"text":"Ready...","color":"gold"}
execute if score @s counter matches -58 as @a[tag=1on1_battle_countdown] at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score @s counter matches -56 as @a[tag=1on1_battle_countdown] at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score @s counter matches -54 as @a[tag=1on1_battle_countdown] at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score @s counter matches -52 as @a[tag=1on1_battle_countdown] at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score @s counter matches -50 as @a[tag=1on1_battle_countdown] at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score @s counter matches -40 as @a[tag=1on1_battle_countdown] at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score @s counter matches -30 as @a[tag=1on1_battle_countdown] at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score @s counter matches -20 as @a[tag=1on1_battle_countdown] at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1


execute if score @s counter matches -1 run function wancomatter:game/1on1/game/start/root

tag @a[tag=1on1_battle_countdown] remove 1on1_battle_countdown