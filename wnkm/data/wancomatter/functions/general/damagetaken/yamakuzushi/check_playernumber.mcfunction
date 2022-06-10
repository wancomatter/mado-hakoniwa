execute as @e[tag=yamakuzushi_AEC] if score @s playerNumber = @e[tag=hurt,limit=1] playerNumber run scoreboard players add #yamakuzushi counter 1
execute if score #yamakuzushi counter matches 11.. run scoreboard players set #yamakuzushi counter 10 
execute if score #yamakuzushi counter matches 1.. run scoreboard players operation #yamakuzushi damageTaken = @s damageTaken
execute if score #yamakuzushi counter matches 1.. run scoreboard players operation #yamakuzushi damageTaken *= #yamakuzushi counter
execute if score #yamakuzushi counter matches 1.. run scoreboard players operation #yamakuzushi damageTaken /= #25 counter
