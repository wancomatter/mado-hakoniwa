execute as @a if score @s playerNumber = @e[tag=sandBag,limit=1,sort=nearest] lastHurtByNumber run tag @s add hurtBy
scoreboard players operation @s subcounter = @s Cooldown9_max
scoreboard players operation @s subcounter /= #10 counter
scoreboard players operation @s dummy = @s Cooldown9_max
scoreboard players operation @s dummy %= #10 counter
tellraw @a[tag=hurtBy] {"text":"--------------------------------","italic":false,"color":"gray"}
tag @a[tag=hurtBy] remove hurtBy
scoreboard players reset @s subcounter
scoreboard players reset @s dummy
scoreboard players reset @s hurtWeaponNumber
scoreboard players reset @s hurtByTime
scoreboard players reset @s lastHurtByNumber
scoreboard players reset @s Cooldown9
scoreboard players reset @s Cooldown9_max