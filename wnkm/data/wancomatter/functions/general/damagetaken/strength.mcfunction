execute store result score #-- counter run data get entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/strength] ActiveEffects[{Id:5b}].Amplifier 1
scoreboard players add #-- counter 1
scoreboard players operation #BaseDamage counter = #BaseDamage damageTaken
scoreboard players operation #BaseDamage counter *= #-- counter
scoreboard players operation #BaseDamage counter /= #10 counter
scoreboard players operation @s damageTaken += #BaseDamage counter