execute unless entity @s[tag=OnGround] if data entity @s {OnGround:1b} run function wancomatter:skills/042/onground
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber run tag @s add this
execute unless entity @e[tag=this,limit=1,scores={Mana=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:42}}}] run scoreboard players set @s counter 60
tp @a[tag=this] ~ ~ ~
scoreboard players set @a[tag=this] ManaCount 0
execute if entity @e[tag=this] if score @s counter matches 54.. run function wancomatter:skills/042/tick2
tag @e[tag=this] remove this
scoreboard players reset #dummy

execute unless score @s counter matches 54.. run scoreboard players add @s counter 1
execute if score @s counter matches 1..53 run function wancomatter:skills/042/sound
execute if score @s counter matches 1..52 run function wancomatter:skills/042/particle
execute if score @s counter matches 60.. run playsound minecraft:item.totem.use master @a ~ ~ ~ 5 0.5
execute if score @s counter matches 60.. run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 0.5
execute if score @s counter matches 60.. run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 3 force @a
execute if score @s counter matches 60.. run particle minecraft:end_rod ~ ~ ~ 1 1 1 2 1500 normal @a
execute if score @s counter matches 60.. run particle minecraft:end_rod ~ ~ ~ 1 1 1 2 300 force @a
execute if score @s counter matches 60.. run kill @s