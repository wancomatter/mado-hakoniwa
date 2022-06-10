tellraw @a ["",{"text":"<終焉の炎霊 ダスク> ","color":"red"},{"text":"我が望むは破滅を呼びし亡国の業火･･････"}]
execute as @a[tag=detonator] run tag @s add b1s21
playsound minecraft:block.portal.travel master @a 0 -100 0 0 2 1
effect give @a minecraft:blindness 1 0 true