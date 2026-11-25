bossbar remove wnkm:1on1/mine
bossbar add wnkm:1on1/mine [{"text":"【1on1】","color":"gold"},{"text":" 鉱山 ","color":"green"},{"score":{"name":"@s","objective":"subcounter2"},"color":"aqua"}]
execute store result bossbar wnkm:1on1/mine max run scoreboard players get @s subcounter2
execute store result bossbar wnkm:1on1/mine value run scoreboard players get @s subcounter2
bossbar set wnkm:1on1/mine style notched_10
bossbar set wnkm:1on1/mine color pink

bossbar remove wnkm:1on1/mine_p1
bossbar add wnkm:1on1/mine_p1 ""
bossbar set wnkm:1on1/mine_p1 style progress
bossbar set wnkm:1on1/mine_p1 color yellow

bossbar remove wnkm:1on1/mine_p2
bossbar add wnkm:1on1/mine_p2 ""
bossbar set wnkm:1on1/mine_p2 style progress
bossbar set wnkm:1on1/mine_p2 color yellow
