#execute if entity @a[scores={maxHP=1..},distance=..8,limit=1,sort=nearest] run function wancomatter:boss/necro/phase2/tp3

tag @a[scores={maxHP=1..},limit=1,sort=nearest] add target
execute facing entity @a[tag=target,limit=1] feet positioned as @a[scores={maxHP=1..},limit=1,sort=nearest] run summon area_effect_cloud ^ ^ ^-12.0 {Tags:["necro_p2_tp_target"],Duration:1}

loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] add necro_random_pos
execute store result score #dummy Cooldown1 run data get entity @e[tag=necro_p2_tp_target,limit=1] Pos[0] 100
execute store result score #dummy Cooldown2 run data get entity @e[tag=necro_p2_tp_target,limit=1] Pos[2] 100
execute store result score #dummy Cooldown3 run data get entity @e[tag=necro_random_pos,limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 40
execute store result score #dummy Cooldown4 run data get entity @e[tag=necro_random_pos,limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 40
execute store result entity @e[tag=necro_p2_tp_target,limit=1] Pos[0] double 0.01 run scoreboard players operation #dummy Cooldown1 += #dummy Cooldown3
execute store result entity @e[tag=necro_p2_tp_target,limit=1] Pos[2] double 0.01 run scoreboard players operation #dummy Cooldown2 += #dummy Cooldown4
kill @e[tag=necro_random_pos]

execute facing entity @e[tag=necro_p2_tp_target,limit=1] feet rotated ~ 0 run function wancomatter:boss/necro/phase2/tp3_loop
scoreboard players reset #dummy

execute facing entity @s feet run function wancomatter:boss/necro/phase2/tp_particle
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 2 1
tag @a[tag=target] remove target