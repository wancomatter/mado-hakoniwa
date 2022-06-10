scoreboard players set #-- counter 0
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/speed] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/haste] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/strength] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/jump_boost] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/fire_resistance] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/water_breathing] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/invisibility] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/night_vision] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/absorption] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/luck] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/slow_falling] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/add_damage] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/dolphins_grace] run scoreboard players add #-- counter 15
#execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/bad_omen] run scoreboard players add #-- counter 15
execute if entity @a[tag=hurtBy,limit=1,predicate=wancomatter:effect/hero_of_the_village] run scoreboard players add #-- counter 15
scoreboard players operation #BaseDamage counter = #BaseDamage damageTaken
scoreboard players operation #BaseDamage counter *= #-- counter
scoreboard players operation #BaseDamage counter /= #100 counter
scoreboard players operation @s damageTaken += #BaseDamage counter