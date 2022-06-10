scoreboard players remove @s counter 400
scoreboard players set @s subcounter 0
effect give @s minecraft:luck 16 3
tag @s add b3s21
tag @s add b3s21used
scoreboard players set @s Cooldown1 380
scoreboard players set @s Cooldown2 380
scoreboard players set @s Cooldown3 380
scoreboard players set @s Cooldown4 380
scoreboard players set @s Cooldown5 380
scoreboard players set @s Cooldown6 460
scoreboard players set @s Cooldown7 380
scoreboard players set @s Cooldown8 380
scoreboard players set @s Cooldown9 380
kill @e[tag=b3volcano]
tp @s 0 10 0
tellraw @a ["",{"text":"<終焉の炎霊 ダスク> ","color":"red"},{"text":"我は終焉の執行者。"}]
playsound minecraft:block.portal.travel master @a 0 -100 0 0 1 1
effect give @a minecraft:blindness 1 0 true
particle minecraft:flash ~ ~1.2 ~ 1 1 1 1 10 force @a
schedule function wancomatter:boss/dusk/skill21/30t 30t
schedule function wancomatter:boss/dusk/skill21/60t 60t
schedule function wancomatter:boss/dusk/skill21/75t 75t
