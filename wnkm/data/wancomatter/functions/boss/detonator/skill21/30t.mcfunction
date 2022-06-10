tellraw @a ["",{"text":"<暴虐の雷鳴 デトネイター> ","color":"yellow"},{"text":"爆散せし混沌に抗う術を持たず滅ぶ……"}]
execute as @a[tag=detonator] run tag @s add b1s21
playsound minecraft:block.portal.travel master @a 0 -100 0 0 2 1
effect give @a minecraft:blindness 1 0 true