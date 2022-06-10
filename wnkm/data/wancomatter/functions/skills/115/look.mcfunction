execute facing entity @a[tag=user,limit=1] feet run tp @s ~ ~ ~ ~ ~
scoreboard players set @s subcounter2 5
scoreboard players remove @a[tag=user] Mana 2
execute unless entity @a[tag=user,scores={Mana=1..},limit=1] run scoreboard players set @s counter 2200