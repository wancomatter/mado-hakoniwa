execute if score @s counter matches 1.. run scoreboard players remove @s counter 1
execute if score @s Cooldown2 <= @s Cooldown2_max run scoreboard players add @s Cooldown1 1
execute if score @s Cooldown1 matches 100.. run scoreboard players add @s Cooldown2 1
execute if score @s Cooldown1 matches 100.. run scoreboard players set @s Cooldown1 0

execute if score @s Cooldown3 matches 1.. run function wancomatter:boss/necro/skill1/sword/1
execute if score @s Cooldown2 matches 1.. unless score @s subcounter matches 1.. unless score @s counter matches 1.. positioned ^ ^ ^3 if entity @a[distance=..2,limit=1,scores={maxHP=1..}] at @s run function wancomatter:boss/necro/skill1/sword/0
