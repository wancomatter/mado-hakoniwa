gamemode spectator @s[gamemode=!spectator]
execute if entity @s[scores={deathTimer=-29..}] run scoreboard players remove @s deathTimer 1
execute if entity @s[scores={deathTimer=-22..-6}] run scoreboard players reset @s maxHP
execute if entity @s[scores={deathTimer=-23}] run tellraw @s {"text":"[システム] あなたは死亡しました。試合の観戦が可能です。"}

execute if entity @s[scores={deathTimer=1..}] run scoreboard players operation @s dummy = @s deathTimer
execute if entity @s[scores={deathTimer=1..}] run scoreboard players operation @s dummy %= #20 counter
execute if entity @s[scores={deathTimer=1..,dummy=0}] run function wancomatter:general/deathtimer_show
scoreboard players reset @s dummy

execute if score #lobby counter matches 1 run scoreboard players set @s deathTimer -1
execute if entity @s[scores={deathTimer=-1..19}] if score #game counter matches 1.. if score @s respawnX matches -2147483648..2147483647 if score @s respawnY matches -2147483648..2147483647 if score @s respawnZ matches -2147483648..2147483647 run function wancomatter:general/deathtimer_tp
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s HP 2147483647
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s Mana 2147483647
execute if entity @s[scores={deathTimer=-1}] run title @s times 10 30 20
execute if entity @s[scores={deathTimer=-1}] run title @s subtitle {"text":"Respawn"}
execute if entity @s[scores={deathTimer=-1}] run title @s title {"text":""}
execute if entity @s[scores={deathTimer=-1}] run effect give @s luck 3 9
execute if entity @s[scores={deathTimer=-1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.5
execute if entity @s[scores={deathTimer=-1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.5
execute if entity @s[scores={deathTimer=-1}] at @s run particle minecraft:end_rod ~ ~0.3 ~ 2 0 2 0.01 80 normal @a
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown1=1..}] Cooldown1 0
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown2=1..}] Cooldown2 0
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown3=1..}] Cooldown3 0
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown4=1..}] Cooldown4 0
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown5=1..}] Cooldown5 0
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown6=1..}] Cooldown6 0
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown7=1..}] Cooldown7 0
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown8=1..}] Cooldown8 0
execute if entity @s[scores={deathTimer=-1}] run scoreboard players set @s[scores={Cooldown9=1..}] Cooldown9 0
execute if entity @s[scores={deathTimer=-1}] run gamemode adventure @s
execute if entity @s[scores={deathTimer=-1}] run tag @s remove noMob
execute if entity @s[scores={deathTimer=-1}] run scoreboard players reset @s deathTimer