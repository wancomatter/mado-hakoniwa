scoreboard players remove @s Mana 7
scoreboard players set @s CooldownX 130
scoreboard players set @s CooldownX_max 130

summon marker ~ ~ ~ {Tags:["purple_bolt","this"]}
execute anchored eyes run tp @e[tag=this] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this,limit=1] SelectItemSlot2 = @s SelectItemSlot2
tag @e[tag=this] remove this
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2
