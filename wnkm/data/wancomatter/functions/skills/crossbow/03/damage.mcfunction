scoreboard players operation #c03 damageTaken = @s damageTaken
scoreboard players operation #c03 damageTaken /= #2 counter
scoreboard players operation @s damageTaken -= #c03 damageTaken
advancement revoke @a[tag=hurtBy] only wancomatter:general/magic-crossbow
tag @a[tag=hurtBy] add c03hurtBy
function wancomatter:general/damagetaken/main
tag @a[tag=c03hurtBy] add hurtBy
tag @a[tag=c03hurtBy] remove c03hurtBy

scoreboard players operation @s damageTaken = #c03 damageTaken
scoreboard players reset #c03
tag @s add magicDamage
tag @s add multiDamage
tag @s add hurt