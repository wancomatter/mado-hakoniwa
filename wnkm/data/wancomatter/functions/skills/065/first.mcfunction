#コスト支払い
scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 600
scoreboard players set @s CooldownX_max 600


execute if entity @e[tag=meditation,limit=1] run tag @s add user
execute if entity @e[tag=meditation,limit=1] as @e[tag=meditation] if score @s playerNumber = @a[tag=user,limit=1,sort=nearest] playerNumber run kill @s
execute if entity @s[tag=user] run tag @s remove user
tp @s @s
summon marker ~ ~ ~ {Tags:["this","meditation"]}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players set @e[tag=this] counter 30
tag @e[tag=this] remove this
tag @s add meditation_using
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1.2 2

