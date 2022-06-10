execute store result score #debug counter run data get entity @s SelectedItem.tag.CustomModelData 1
tellraw @a {"score":{"name":"#debug","objective":"counter"}}
scoreboard players reset #debug