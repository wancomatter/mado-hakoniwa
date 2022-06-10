fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}

execute if entity @s[scores={page=9}] run function wancomatter:lobby/0-bless
execute if entity @s[scores={page=19}] run function wancomatter:lobby/0-artifact

execute if entity @s[scores={page=1}] run function wancomatter:lobby/1-meele
execute if entity @s[scores={page=2}] run function wancomatter:lobby/2-bow
execute if entity @s[scores={page=3}] run function wancomatter:lobby/3-armor1
execute if entity @s[scores={page=4}] run function wancomatter:lobby/4-magic1
execute if entity @s[scores={page=5}] run function wancomatter:lobby/5-magic_assist
execute if entity @s[scores={page=6}] run function wancomatter:lobby/6-magic_summon
execute if entity @s[scores={page=7}] run function wancomatter:lobby/7-foods

execute if entity @s[scores={page=11}] run function wancomatter:lobby/1-offitem
execute if entity @s[scores={page=12}] run function wancomatter:lobby/2-gun
execute if entity @s[scores={page=13}] run function wancomatter:lobby/3-armor2
execute if entity @s[scores={page=14}] run function wancomatter:lobby/4-magic2
execute if entity @s[scores={page=15}] run function wancomatter:lobby/5-magic_assist2

execute as @a[tag=item_show] run data modify block 0 0 0 Items[{tag:{Soulbound:1b}}].tag.Owner set from entity @s UUID
loot replace entity @s enderchest.0 mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 minecraft:air
tag @s remove item_show