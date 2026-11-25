bossbar remove wnkm:1on1/cake
bossbar add wnkm:1on1/cake [{"text":"【1on1】","color":"gold"},{"text":" ケーキ ","color":"green"},{"score":{"name":"@s","objective":"subcounter2"},"color":"aqua"}]
execute store result bossbar wnkm:1on1/cake max run scoreboard players get @s subcounter2
execute store result bossbar wnkm:1on1/cake value run scoreboard players get @s subcounter2
bossbar set wnkm:1on1/cake style notched_10
bossbar set wnkm:1on1/cake color pink

bossbar remove wnkm:1on1/cake_p1
bossbar add wnkm:1on1/cake_p1 ""
bossbar set wnkm:1on1/cake_p1 style progress
bossbar set wnkm:1on1/cake_p1 color yellow

bossbar remove wnkm:1on1/cake_p2
bossbar add wnkm:1on1/cake_p2 ""
bossbar set wnkm:1on1/cake_p2 style progress
bossbar set wnkm:1on1/cake_p2 color yellow
