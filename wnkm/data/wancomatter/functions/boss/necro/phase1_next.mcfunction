kill @e[tag=necro_s1skeleton]
kill @e[tag=necro_s3zombie]
kill @e[tag=necro_s4skeleton]
tp @s ~ 8.02 ~

scoreboard players operation @s Mana = @s maxHP
scoreboard players operation @s Mana /= #4 counter

scoreboard players add @s maxMana 1
scoreboard players set @s counter 0
scoreboard players set @a boss_hate 0

