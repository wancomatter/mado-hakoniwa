scoreboard players remove @s counter 400
effect give @s minecraft:luck 16 3
tag @s add b4s21
tag @s add b4s21used
scoreboard players set @s Cooldown1 380
scoreboard players set @s Cooldown2 380
scoreboard players set @s Cooldown3 380
scoreboard players set @s Cooldown4 380
scoreboard players set @s Cooldown5 380
scoreboard players set @s Cooldown6 380
tp @s 0 10 0
tellraw @a ["",{"text":"<白勢の戦神 アークト> ","color":"aqua"},{"text":"我が白勢の大群の脅威にひれ伏すがいい！"}]
playsound minecraft:block.portal.travel master @a 0 -100 0 0 1 1
effect give @a minecraft:blindness 1 0 true
particle minecraft:flash ~ ~1.2 ~ 1 1 1 1 10 force @a
