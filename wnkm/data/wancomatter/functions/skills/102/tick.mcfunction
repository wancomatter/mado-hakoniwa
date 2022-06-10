scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add now-poseidon
scoreboard players reset #dummy
execute if score @s counter matches 6.. at @a[tag=now-poseidon] if block ~ ~ ~ #wancomatter:water run scoreboard players set @s counter 60
execute if entity @a[tag=now-poseidon,scores={fall=1..},limit=1] as @a[tag=now-poseidon,scores={fall=1..}] if data entity @s {SelectedItem:{id:"minecraft:trident",tag:{CustomModelData:102}}} run tag @s add use_poseidon
execute if entity @a[tag=use_poseidon,limit=1] run scoreboard players set @a[tag=use_poseidon] trident 1
execute if entity @a[tag=now-poseidon,nbt={OnGround:1b},limit=1] run scoreboard players set @s counter 80
tag @a[tag=now-poseidon] remove now-poseidon
execute if score @s counter matches 80.. run kill @s