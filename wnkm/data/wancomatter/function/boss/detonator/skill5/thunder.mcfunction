scoreboard players add @s subcounter 1
summon minecraft:lightning_bolt ^8 ^1 ^ {Tags:["wnkm.owned","wnkm.round"]}
execute unless score @s subcounter matches 37.. rotated ~20 ~ run function wancomatter:boss/detonator/skill5/thunder
