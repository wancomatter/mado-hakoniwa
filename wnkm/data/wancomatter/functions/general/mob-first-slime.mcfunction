#data modify entity @s Health set from entity @s Attributes[{Name:"generic.max_health"}].Base
#execute store result entity @s Health float 1 run data get entity @s Attributes[{Name:"generic.max_health"}].Base 1
tag @s add type_slime
tag @s remove mobInit
