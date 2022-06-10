data modify entity @s HandItems set value [{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}},{}]
function sirasagi:sirasagi/pose_r_first
scoreboard players add @s counter4 25

scoreboard players remove @s counter6 5
scoreboard players set @s counter2 10

function sirasagi:sirasagi/pose_l_first
scoreboard players set @s counter10 10
playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 5 1