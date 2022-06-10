scoreboard players set @s subcounter 0
tag @s add now-Braze
function wancomatter:skills/017/launch
tag @s remove now-Braze
execute if entity @e[tag=Braze-hit,limit=1] run function wancomatter:skills/017/hit-entity
kill @s