scoreboard players operation #BaseDamage counter = #BaseDamage damageTaken
scoreboard players operation #BaseDamage counter *= @s magicBoost
scoreboard players operation #BaseDamage counter /= #100 counter
scoreboard players operation #BaseDamage counter -= #BaseDamage damageTaken
scoreboard players operation @e[limit=1,tag=hurt,tag=magicDamage] damageTaken += #BaseDamage counter
