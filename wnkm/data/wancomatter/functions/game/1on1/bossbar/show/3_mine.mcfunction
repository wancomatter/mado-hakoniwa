bossbar set wnkm:1on1/mine name [{"text":"【1on1】","color":"gold"},{"text":" 鉱山 ","color":"green"},{"score":{"name":"@s","objective":"subcounter2"},"color":"aqua"}]
execute store result bossbar wnkm:1on1/mine value run scoreboard players get @s subcounter2
bossbar set wnkm:1on1/mine players @a[tag=show]

execute as @a[tag=now1,limit=1] run scoreboard players operation @s dummy = @s HP
execute as @a[tag=now1,limit=1] run scoreboard players operation @s dummy /= #10 counter
bossbar set wnkm:1on1/mine_p1 name [{"selector":"@a[tag=now1,limit=1]","color":"white"},{"text":"のHP:","color":"white"},{"score":{"name":"@a[tag=now1,limit=1]","objective":"dummy"},"color":"white"},{"text":" /","color":"gray"},{"text":" MP:","color":"aqua"},{"score":{"name":"@a[tag=now1,limit=1]","objective":"Mana"},"color":"aqua"}]
execute store result bossbar wnkm:1on1/mine_p1 value run scoreboard players get @a[tag=now1,limit=1] dummy
execute store result bossbar wnkm:1on1/mine_p1 max run scoreboard players get @a[tag=now1,limit=1] maxHP
bossbar set wnkm:1on1/mine_p1 players @a[tag=show,tag=!now1,tag=!now2]

execute as @a[tag=now2,limit=1] run scoreboard players operation @s dummy = @s HP
execute as @a[tag=now2,limit=1] run scoreboard players operation @s dummy /= #10 counter
bossbar set wnkm:1on1/mine_p2 name [{"selector":"@a[tag=now2,limit=1]","color":"white"},{"text":"のHP:","color":"white"},{"score":{"name":"@a[tag=now2,limit=1]","objective":"dummy"},"color":"white"},{"text":" /","color":"gray"},{"text":" MP:","color":"aqua"},{"score":{"name":"@a[tag=now2,limit=1]","objective":"Mana"},"color":"aqua"}]
execute store result bossbar wnkm:1on1/mine_p2 value run scoreboard players get @a[tag=now2,limit=1] dummy
execute store result bossbar wnkm:1on1/mine_p2 max run scoreboard players get @a[tag=now2,limit=1] maxHP
bossbar set wnkm:1on1/mine_p2 players @a[tag=show,tag=!now1,tag=!now2]


scoreboard players reset @a[tag=show] dummy