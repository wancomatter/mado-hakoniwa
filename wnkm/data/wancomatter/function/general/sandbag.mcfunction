execute as @a[tag=hurtBy] unless score @s playerNumber = @e[tag=sandBag,limit=1,sort=nearest] lastHurtByNumber run function wancomatter:general/sandbag-end
scoreboard players operation @s subcounter = @s damageTaken
scoreboard players operation @s subcounter /= #10 counter
scoreboard players operation @s dummy = @s damageTaken
scoreboard players operation @s dummy %= #10 counter
scoreboard players operation @s Cooldown9_max += @s damageTaken
scoreboard players operation @s Cooldown7 = @s Cooldown9_max
scoreboard players operation @s Cooldown7 /= #10 counter
scoreboard players operation @s Cooldown8 = @s Cooldown9_max
scoreboard players operation @s Cooldown8 %= #10 counter
scoreboard players add @s Cooldown9 1
execute if entity @s[tag=!magicDamage,tag=!trueDamage] run tellraw @a[tag=hurtBy] [{"text":"[SandBag] 与ダメージ: ","color":"yellow"},{"translate":"%s%s%s ","color":"#ffdd55","with":[{"score":{"name":"@s","objective":"subcounter"}},{"text":"."},{"score":{"name":"@s","objective":"dummy"}}]},{"text":"(物理)","color":"gold"},{"text":" [回数:","color":"gray"},{"score":{"name":"@s","objective":"Cooldown9"},"color":"gray"},{"text":", 合計:","color":"gray"},{"score":{"name":"@s","objective":"Cooldown7"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"Cooldown8"},"color":"gray"},{"text":"]","color":"gray"}]
execute if entity @s[tag=magicDamage,tag=!trueDamage] run tellraw @a[tag=hurtBy] [{"text":"[SandBag] 与ダメージ: ","color":"yellow"},{"translate":"%s%s%s ","color":"#ffdd55","with":[{"score":{"name":"@s","objective":"subcounter"}},{"text":"."},{"score":{"name":"@s","objective":"dummy"}}]},{"text":"(魔法)","color":"light_purple"},{"text":" [回数:","color":"gray"},{"score":{"name":"@s","objective":"Cooldown9"},"color":"gray"},{"text":", 合計:","color":"gray"},{"score":{"name":"@s","objective":"Cooldown7"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"Cooldown8"},"color":"gray"},{"text":"]","color":"gray"}]
execute if entity @s[tag=trueDamage] run tellraw @a[tag=hurtBy] [{"text":"[SandBag] 与ダメージ: ","color":"yellow"},{"translate":"%s%s%s ","color":"#ffdd55","with":[{"score":{"name":"@s","objective":"subcounter"}},{"text":"."},{"score":{"name":"@s","objective":"dummy"}}]},{"text":"(貫通)","color":"aqua"},{"text":" [回数:","color":"gray"},{"score":{"name":"@s","objective":"Cooldown9"},"color":"gray"},{"text":", 合計:","color":"gray"},{"score":{"name":"@s","objective":"Cooldown7"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"Cooldown8"},"color":"gray"},{"text":"]","color":"gray"}]
scoreboard players reset @s subcounter
scoreboard players reset @s dummy
scoreboard players set @s HP 5000
