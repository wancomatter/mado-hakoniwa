# 初期化済みのプレイヤーの空いている装備枠に、ロビーでハダルを補充する。
execute if score #lobby counter matches 1 as @a[gamemode=!spectator,scores={wnkm.schema=1}] unless items entity @s enderchest.7 * run loot replace entity @s enderchest.7 loot wnkm:equipment/magic_assist/hadal

execute as @a[scores={wnkm.schema=1,CooldownX=1..}] run scoreboard players remove @s CooldownX 1
execute as @a[scores={wnkm.schema=1}] run function wnkm:equipment/1.regenerate_mana
execute as @a[scores={wnkm.schema=1,rod=1..}] at @s run function wnkm:equipment/2.use_rod
