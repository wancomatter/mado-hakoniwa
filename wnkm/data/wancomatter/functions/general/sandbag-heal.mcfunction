scoreboard players operation @s subcounter = @s damageTaken
scoreboard players operation @s subcounter /= #10 counter
scoreboard players operation @s dummy = @s damageTaken
scoreboard players operation @s dummy %= #10 counter
tellraw @a[tag=hurtBy] [{"text":"[SandBag] 与えたダメージ:","color":"yellow"},{"score":{"name":"@s","objective":"subcounter"}},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"dummy"}}]
scoreboard players reset @s subcounter
scoreboard players reset @s dummy
scoreboard players set @s HP 5000
