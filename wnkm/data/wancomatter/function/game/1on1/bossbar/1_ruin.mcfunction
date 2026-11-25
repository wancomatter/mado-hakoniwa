bossbar remove wnkm:1on1/ruins
bossbar add wnkm:1on1/ruins [{"text":"【1on1】","color":"gold"},{"text":" 遺跡 ","color":"green"},{"score":{"name":"@s","objective":"subcounter2"},"color":"aqua"}]
execute store result bossbar wnkm:1on1/ruins max run scoreboard players get @s subcounter2
execute store result bossbar wnkm:1on1/ruins value run scoreboard players get @s subcounter2
bossbar set wnkm:1on1/ruins style notched_10
bossbar set wnkm:1on1/ruins color pink

bossbar remove wnkm:1on1/ruins_p1
bossbar add wnkm:1on1/ruins_p1 ""
bossbar set wnkm:1on1/ruins_p1 style progress
bossbar set wnkm:1on1/ruins_p1 color yellow

bossbar remove wnkm:1on1/ruins_p2
bossbar add wnkm:1on1/ruins_p2 ""
bossbar set wnkm:1on1/ruins_p2 style progress
bossbar set wnkm:1on1/ruins_p2 color yellow
