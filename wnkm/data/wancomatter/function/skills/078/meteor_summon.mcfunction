scoreboard players remove @s subcounter 3

loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] add this
execute store result score @s Cooldown3 run data get entity @e[tag=this,limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 300
execute store result score @s Cooldown4 run data get entity @e[tag=this,limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 300
kill @e[tag=this]
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s Cooldown3 += @s Cooldown1
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s Cooldown4 += @s Cooldown2



summon minecraft:armor_stand ~ ~100 ~ {FallDistance:-1000.0f,Invisible:1b,Invulnerable:1b,Motion:[0.0d,-10.0d,0.0d],OnGround:0b,Silent:1b,Small:1b,Tags:["meteorStand_fall","wnkm.owned","wnkm.round"],fall_distance:-1000.0d}
summon minecraft:armor_stand ~ ~100 ~ {FallDistance:-1000.0f,Invisible:1b,Invulnerable:1b,Motion:[0.0d,-1.0d,0.0d],OnGround:0b,Silent:1b,Small:1b,Tags:["meteor_bullet","first","wnkm.owned","wnkm.round"],equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:209},"minecraft:enchantment_glint_override":1b,"minecraft:item_model":"wnkm:appearance/golden_hoe/209"},count:1,id:"minecraft:golden_hoe"}},fall_distance:-1000.0d}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
