execute as @e[tag=dusk] run tag @s add old-dusk
summon minecraft:stray ~ ~ ~ {CustomNameVisible:1b,Glowing:1b,Health:1000.0f,PersistenceRequired:1b,Silent:1b,Tags:["mob","undead","dusk","boss","first","wnkm.owned","wnkm.round"],Team:"Enemy",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.24d,id:"minecraft:movement_speed"},{base:10.0d,id:"minecraft:attack_damage"},{base:0.9d,id:"minecraft:knockback_resistance"},{base:100.0d,id:"minecraft:follow_range"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:0.0f,offhand:0.0f},equipment:{chest:{components:{"minecraft:attribute_modifiers":[],"minecraft:dyed_color":10689564},count:1,id:"minecraft:leather_chestplate"},head:{components:{"minecraft:attribute_modifiers":[{amount:6.0d,id:"minecraft:00000000-3214-473e-0000-00003214473e",operation:"add_value",slot:"head",type:"minecraft:armor"}],"minecraft:profile":{id:[I;1274974332,-1442925911,-779908940,1694896209],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2NGViOGU5OWUyODc4ZjM0MzgwM2E3NDJlZjU3Y2VhZmFjYzIyODNlNjdiODhlZGVjMTY4MjEzMTZmOWYifX19"}]}},count:1,id:"minecraft:player_head"},mainhand:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:enchantment_glint_override":1b,"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}},CustomName:{bold:1b,color:"red",text:"終焉の炎霊 ダスク"},DeathLootTable:"empty"}

execute as @e[tag=old-dusk] if entity @s[team=Enemy] run team join Enemy @e[tag=dusk,tag=first]
execute as @e[tag=old-dusk] if entity @s[team=Red] run team join Red @e[tag=dusk,tag=first]
execute as @e[tag=old-dusk] if entity @s[team=Blue] run team join Blue @e[tag=dusk,tag=first]
execute as @e[tag=old-dusk] if entity @s[team=Player] run team join Player @e[tag=dusk,tag=first]
scoreboard players operation @e[tag=dusk,tag=first,limit=1] teamNumber = @e[tag=old-dusk,limit=1] teamNumber

scoreboard players set @e[tag=dusk,tag=first] damageTaken 0
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] dmgShield 10
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] dmgShield 20
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] dmgShield 30
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] dmgShield 40
execute unless score @e[tag=old-dusk,limit=1] counter matches 98.. run scoreboard players operation @e[tag=dusk,tag=first,limit=1] counter = @e[tag=old-dusk,limit=1] counter
scoreboard players operation @e[tag=dusk,tag=first,limit=1] subcounter = @e[tag=old-dusk,limit=1] subcounter
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Mana = @e[tag=old-dusk,limit=1] Mana
scoreboard players operation @e[tag=dusk,tag=first,limit=1] maxMana = @e[tag=old-dusk,limit=1] maxMana
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown1 = @e[tag=old-dusk,limit=1] Cooldown1
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown2 = @e[tag=old-dusk,limit=1] Cooldown2
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown3 = @e[tag=old-dusk,limit=1] Cooldown3
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown4 = @e[tag=old-dusk,limit=1] Cooldown4
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown5 = @e[tag=old-dusk,limit=1] Cooldown5
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown6 = @e[tag=old-dusk,limit=1] Cooldown6
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown7 = @e[tag=old-dusk,limit=1] Cooldown7
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown8 = @e[tag=old-dusk,limit=1] Cooldown8
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown9 = @e[tag=old-dusk,limit=1] Cooldown9
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown1_max = @e[tag=old-dusk,limit=1] Cooldown1_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown2_max = @e[tag=old-dusk,limit=1] Cooldown2_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown3_max = @e[tag=old-dusk,limit=1] Cooldown3_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown4_max = @e[tag=old-dusk,limit=1] Cooldown4_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown5_max = @e[tag=old-dusk,limit=1] Cooldown5_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown6_max = @e[tag=old-dusk,limit=1] Cooldown6_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown7_max = @e[tag=old-dusk,limit=1] Cooldown7_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown8_max = @e[tag=old-dusk,limit=1] Cooldown8_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] Cooldown9_max = @e[tag=old-dusk,limit=1] Cooldown9_max
scoreboard players operation @e[tag=dusk,tag=first,limit=1] HP = @e[tag=old-dusk,limit=1] HP
scoreboard players operation @e[tag=dusk,tag=first,limit=1] maxHP = @e[tag=old-dusk,limit=1] maxHP
data modify entity @e[tag=dusk,tag=first,limit=1] active_effects set from entity @e[tag=old-dusk,limit=1] active_effects
execute if entity @e[tag=old-dusk,tag=b3s21] run tag @e[tag=dusk,tag=first,limit=1] add b3s21
execute if entity @e[tag=old-dusk,tag=b3s21used] run tag @e[tag=dusk,tag=first,limit=1] add b3s21used
execute if entity @e[tag=old-dusk,tag=b3s22] run tag @e[tag=dusk,tag=first,limit=1] add b3s22
execute if entity @e[tag=old-dusk,tag=b3s22used] run tag @e[tag=dusk,tag=first,limit=1] add b3s22used
execute if data entity @e[tag=old-dusk,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0d}]} run data modify entity @e[tag=dusk,tag=first,limit=1] Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d

execute unless entity @e[tag=dusk-target,limit=1] if entity @a[sort=nearest,limit=1,gamemode=!spectator] as @a[sort=nearest,gamemode=!spectator] unless score #dummy teamNumber = @s teamNumber run tag @s add dusk-target
execute if entity @e[tag=dusk-target,limit=1] run summon snowball ~ ~3.3 ~ {Motion:[0.0d,-10.0d,0.0d],Tags:["discharge2","wnkm.owned","wnkm.round"]}
execute if entity @e[tag=dusk-target,limit=1] run data modify entity @e[type=snowball,tag=discharge2,limit=1] Owner set from entity @e[tag=dusk-target,limit=1,sort=nearest] UUID
execute if entity @e[tag=dusk-target,limit=1] facing entity @e[tag=dusk-target,limit=1] feet run tp @e[tag=dusk,tag=first] ~ ~ ~ ~ ~
tag @e[tag=discharge2] remove discharge2
tag @e[tag=dusk-target] remove dusk-target

tag @e[tag=dusk,tag=first] remove first
tp @e[tag=old-dusk] 0 -100 0
data merge entity @e[tag=old-dusk,limit=1] {DeathTime:19s}
kill @e[tag=old-dusk]
kill @s
