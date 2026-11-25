execute if entity @s[tag=Healthdrain] run scoreboard players operation #-- dummy *= #-1 counter
execute if entity @s[tag=Healthdrain] run scoreboard players operation #-- dummy *= @s damageTaken
execute if entity @s[tag=Healthdrain] run scoreboard players operation #-- dummy /= #100 counter
execute if entity @s[tag=Healthdrain] if data entity @s {active_effects:[{id:"minecraft:hero_of_the_village",show_icon:0b}]} as @a[tag=hurtBy] run scoreboard players operation #-- dummy *= @s healPower
execute if entity @s[tag=Healthdrain] if data entity @s {active_effects:[{id:"minecraft:hero_of_the_village",show_icon:0b}]} as @a[tag=hurtBy] run scoreboard players operation #-- dummy /= #100 counter
execute if entity @s[tag=Healthdrain] as @a[tag=hurtBy] run scoreboard players operation @s HPheal += #-- dummy
execute if entity @s[tag=Healthdrain] run tag @s remove Healthdrain
