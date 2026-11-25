# Call after launch and retry each tick for tagged entities in every dimension.
execute if entity @s[type=player] run return fail
execute unless entity @s[tag=player_motion.restore_invulnerable] run return fail

# Entity loading clips Motion outside +/-10. Flooring both signs catches doubles
# just outside the bound even when float conversion would round them to 10.
execute store result score #player_motion PlayerMotion.X run data get entity @s Motion[0] 1
execute unless score #player_motion PlayerMotion.X matches -10..10 run return fail
execute store result score #player_motion PlayerMotion.X run data get entity @s Motion[0] -1
execute unless score #player_motion PlayerMotion.X matches -10..10 run return fail
execute store result score #player_motion PlayerMotion.X run data get entity @s Motion[1] 1
execute unless score #player_motion PlayerMotion.X matches -10..10 run return fail
execute store result score #player_motion PlayerMotion.X run data get entity @s Motion[1] -1
execute unless score #player_motion PlayerMotion.X matches -10..10 run return fail
execute store result score #player_motion PlayerMotion.X run data get entity @s Motion[2] 1
execute unless score #player_motion PlayerMotion.X matches -10..10 run return fail
execute store result score #player_motion PlayerMotion.X run data get entity @s Motion[2] -1
execute unless score #player_motion PlayerMotion.X matches -10..10 run return fail

execute store success score #player_motion PlayerMotion.X run data modify entity @s Invulnerable set value 0b
execute if score #player_motion PlayerMotion.X matches 1 run tag @s remove player_motion.restore_invulnerable
