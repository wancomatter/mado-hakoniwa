execute if entity @s[tag=Manadrain] run scoreboard players operation @s Mana -= #-- dummy
execute if entity @s[tag=Manadrain] unless score @s Mana matches 0.. run scoreboard players set @s Mana 0
execute if entity @s[tag=Manadrain] as @a[tag=hurtBy] run scoreboard players operation @s Mana += #-- dummy
execute if entity @s[tag=Manadrain] run tag @s remove Manadrain
