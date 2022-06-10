tag @s add killed-player
execute unless entity @s[scores={lastHurtByNumber=-2147483648..}] as @a[advancements={wancomatter:general/dealt=true},sort=nearest,limit=1] run tag @s add got-kill
execute if entity @s[scores={lastHurtByNumber=-2147483648..}] as @e[scores={playerNumber=-2147483648..,maxHP=1..}] if score @a[tag=killed-player,limit=1] lastHurtByNumber = @s playerNumber run tag @s add got-kill
execute if entity @e[tag=got-kill,limit=1] if entity @s[scores={hurtWeaponNumber=1..}] run function wancomatter:general/kill-log/by_weapon
execute if entity @e[tag=got-kill,limit=1] if entity @s[scores={hurtWeaponNumber=..-1}] run tag @s add flag
execute if entity @e[tag=got-kill,limit=1] if entity @s[scores={hurtWeaponNumber=0}] run function wancomatter:general/kill-log/no_weapon
execute if entity @e[tag=got-kill,limit=1] unless entity @s[scores={hurtWeaponNumber=-2147483648..2147483647}] run function wancomatter:general/kill-log/no_weapon
execute unless entity @e[tag=got-kill,limit=1] run tag @s add flag
execute if entity @s[tag=flag,scores={hurtWeaponNumber=-11..-1}] if score #gamemode counter matches 12 if entity @e[tag=bear,limit=1] run function wancomatter:boss/bear/kill-log
execute if entity @s[tag=flag,scores={hurtWeaponNumber=-32..-20}] if score #gamemode counter matches 12 if entity @e[tag=detonator,limit=1] run function wancomatter:boss/detonator/kill-log
execute if entity @s[tag=flag,scores={hurtWeaponNumber=-52..-40}] if score #gamemode counter matches 12 if entity @e[tag=dusk,limit=1] run function wancomatter:boss/dusk/kill-log
execute if entity @s[tag=flag,scores={hurtWeaponNumber=-79..-60}] if score #gamemode counter matches 12 if entity @e[tag=necro,limit=1] run function wancomatter:boss/necro/kill-log
execute if entity @s[tag=flag,scores={hurtWeaponNumber=-99..-80}] if score #gamemode counter matches 12 if entity @e[tag=dragon1_stand_body,limit=1] run function wancomatter:boss/dragon/kill-log
execute if entity @s[tag=flag] run tellraw @a ["",{"text":"[KILL] ","color":"red"},{"selector":"@s"},{"text":" died"}]
execute if entity @s[tag=flag] run tag @s remove flag
execute if entity @s[tag=scythe_attacked] if entity @e[tag=got-kill,limit=1] as @e[tag=got-kill] at @s run function wancomatter:skills/114/get-kill
execute if score #game counter matches 1.. if score #gamemode counter matches 4 as @e[tag=got-kill] unless entity @s[tag=killed-player] run function wancomatter:game/pvp/4_get-kill
execute if score #game counter matches 1.. if score #gamemode counter matches 4 as @e[tag=got-kill] if entity @s[tag=killed-player] run function wancomatter:game/pvp/4_killed
execute if score #game counter matches 1.. if score #gamemode counter matches 4 unless entity @e[tag=got-kill,limit=1] run function wancomatter:game/pvp/4_killed
tag @e[tag=got-kill] remove got-kill
tag @a remove killed-player
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
execute at @s run playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 2 0.6
gamemode spectator @s
tag @s add noMob
effect clear @s
scoreboard players reset @s maxHP
scoreboard players set @s HP 2000000000
scoreboard players set @s MP 2000000000
scoreboard players set @s deathTimer -2
execute if score #gamemode counter matches 12 run scoreboard players remove @s lifestock 1
execute if score #gamemode counter matches 12 if score @s lifestock matches 1.. run scoreboard players set @s deathTimer 201
execute if score #gamemode counter matches 12 if score @s lifestock matches 0.. run tellraw @s {"translate":"[システム] あなたの残機は残り%sです","with":[{"score":{"name":"@s","objective":"lifestock"}}]}
execute if score #gamemode counter matches 4 run scoreboard players set @s deathTimer 121
scoreboard players reset @s hurtWeaponNumber
scoreboard players reset @s lastHurtByNumber
scoreboard players reset @s hurtByTime
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[scores={playerNumber=0..},tag=boomerang] if score @s playerNumber = #dummy playerNumber run scoreboard players set @s counter 2200
execute as @e[scores={playerNumber=0..},type=!player,tag=!stable,tag=!boomerang] if score @s playerNumber = #dummy playerNumber run kill @s
execute as @e[scores={ownerNumber=0..},type=!player,tag=!stable,tag=!boomerang] if score @s ownerNumber = #dummy playerNumber run kill @s
scoreboard players reset #dummy
execute if entity @s[tag=windcut_addable] run tag @s remove windcut_addable
execute if entity @s[tag=1on1_battle] run tp @s 0 64 0
execute if entity @s[tag=1on1_battle] run tag @s add 1on1_loser
execute if entity @s[tag=1on1_battle] run tag @s remove 1on1_battle
