data modify entity @e[tag=this2,limit=1] Owner set from entity @s UUID
execute store success score @s dummy run data modify entity @e[tag=this2,limit=1] Owner set from entity @e[tag=this,limit=1] Item.tag.Owner
