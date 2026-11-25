data remove entity @s Motion
data modify entity @s Owner set from entity @s Item.components."minecraft:custom_data".Owner
data merge entity @s {PickupDelay:0s,Age:5400s}
