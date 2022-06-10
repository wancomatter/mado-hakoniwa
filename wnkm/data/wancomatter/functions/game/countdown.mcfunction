execute unless score #gametime dummy matches 41.. run scoreboard players add #gametime dummy 1
execute if entity @e[type=shulker,tag=set_stone,limit=1] unless score #gamemode counter matches 11.. run kill @e[type=shulker,tag=set_stone]
execute if entity @e[type=shulker,tag=wnkm035shulker,limit=1] unless score #gamemode counter matches 11.. run kill @e[type=shulker,tag=wnkm035shulker]
effect give @a minecraft:luck 4 9 true
execute if score #gametime dummy matches 2 run title @a title {"text":"R","color":"aqua"}
execute if score #gametime dummy matches 4 run title @a title {"text":"Re","color":"aqua"}
execute if score #gametime dummy matches 6 run title @a title {"text":"Rea","color":"aqua"}
execute if score #gametime dummy matches 8 run title @a title {"text":"Read","color":"aqua"}
execute if score #gametime dummy matches 10 run title @a title {"text":"Ready","color":"aqua"}
execute if score #gametime dummy matches 20 run title @a title {"text":"Ready.","color":"aqua"}
execute if score #gametime dummy matches 30 run title @a title {"text":"Ready..","color":"aqua"}
execute if score #gametime dummy matches 40 run title @a title {"text":"Ready...","color":"aqua"}
execute if score #gametime dummy matches 2 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score #gametime dummy matches 4 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score #gametime dummy matches 6 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score #gametime dummy matches 8 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score #gametime dummy matches 10 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score #gametime dummy matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score #gametime dummy matches 30 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
execute if score #gametime dummy matches 40 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~-20 ~ 0 0.5 1
#execute if score #gametime dummy matches 40 run tp wnkm 0 77 0 -90 90

execute if score #gametime counter matches -401 run title @a title {"text":"-†- 20 -†-","color":"aqua"}
execute if score #gametime counter matches -201 run title @a title {"text":"-†- 10 -†-","color":"aqua"}
execute if score #gametime counter matches -101 run title @a title {"text":"-†- 5 -†-","color":"aqua"}
execute if score #gametime counter matches -81 run title @a title {"text":"-†- 4 -†-","color":"aqua"}
execute if score #gametime counter matches -61 run title @a title {"text":"-†- 3 -†-","color":"aqua"}
execute if score #gametime counter matches -41 run title @a title {"text":"-†- 2 -†-","color":"aqua"}
execute if score #gametime counter matches -21 run title @a title {"text":"-†- 1 -†-","color":"aqua"}
execute if score #gametime counter matches -401 run playsound minecraft:block.note_block.pling master @a 0 -100 0 0 1 1
execute if score #gametime counter matches -201 run playsound minecraft:block.note_block.pling master @a 0 -100 0 0 1 1
execute if score #gametime counter matches -101 run playsound minecraft:block.note_block.pling master @a 0 -100 0 0 1 1
execute if score #gametime counter matches -81 run playsound minecraft:block.note_block.pling master @a 0 -100 0 0 1 1
execute if score #gametime counter matches -61 run playsound minecraft:block.note_block.pling master @a 0 -100 0 0 1 1
execute if score #gametime counter matches -41 run playsound minecraft:block.note_block.pling master @a 0 -100 0 0 1 1
execute if score #gametime counter matches -21 run playsound minecraft:block.note_block.pling master @a 0 -100 0 0 1 1
execute if score #gametime counter matches -1 run scoreboard players set @a HP 2147483647
execute if score #gametime counter matches -1 run scoreboard players set @a Mana 2147483647
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 run effect clear @a minecraft:luck
execute if score #gametime counter matches -1 run tag @a remove magicDamage2
execute if score #gametime counter matches -1 run playsound minecraft:block.note_block.pling master @a 0 -100 0 0 2 1
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown1=1..}] Cooldown1 0
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown2=1..}] Cooldown2 0
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown3=1..}] Cooldown3 0
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown4=1..}] Cooldown4 0
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown5=1..}] Cooldown5 0
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown6=1..}] Cooldown6 0
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown7=1..}] Cooldown7 0
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown8=1..}] Cooldown8 0
execute if score #gametime counter matches -1 run scoreboard players set @a[scores={Cooldown9=1..}] Cooldown9 0
execute if score #gametime counter matches -1 run title @a times 0 70 20
execute if score #gametime counter matches -1 unless score #gamemode counter matches 11.. run title @a title {"text":"GAME START","color":"red","underlined":true}
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 run title @a times 0 0 20
execute if score #gametime counter matches -1 if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 run fill -40 60 -40 40 57 40 minecraft:air replace minecraft:white_stained_glass
execute if score #gametime counter matches -1 if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 run fill -40 54 -40 40 57 40 minecraft:air replace minecraft:white_stained_glass
execute if score #gametime counter matches -1 if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 if score #stagechanged subcounter matches 5 run fill 31 31 31 -31 35 -31 minecraft:air replace minecraft:white_stained_glass
execute if score #gametime counter matches -1 if score #gamemode counter matches 1..9 at @e[tag=spawnStand] run fill ~-3 ~ ~-3 ~3 ~6 ~3 minecraft:air replace #wancomatter:glass
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 1 run function wancomatter:boss/detonator/advent
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 2 run function wancomatter:boss/kirito/advent
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 3 run function wancomatter:boss/dusk/advent
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 4 run function wancomatter:boss/necro/advent
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 5 run function wancomatter:boss/bear/advent
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 2..3 run fill 39 7 6 45 14 -6 minecraft:air
execute if score #gametime counter matches -1 if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 2..3 run fill 40 6 -6 63 8 6 minecraft:air
execute store result bossbar wnkm:gametime value run scoreboard players get #gametime subcounter2
bossbar set wnkm:gametime players @a