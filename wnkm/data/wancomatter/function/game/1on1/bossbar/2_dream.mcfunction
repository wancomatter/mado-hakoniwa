bossbar remove wnkm:1on1/dream
bossbar add wnkm:1on1/dream [{"text":"【1on1】","color":"gold"},{"text":" 彼岸 ","color":"green"},{"score":{"name":"@s","objective":"subcounter2"},"color":"aqua"}]
execute store result bossbar wnkm:1on1/dream max run scoreboard players get @s subcounter2
execute store result bossbar wnkm:1on1/dream value run scoreboard players get @s subcounter2
bossbar set wnkm:1on1/dream style notched_10
bossbar set wnkm:1on1/dream color pink

bossbar remove wnkm:1on1/dream_p1
bossbar add wnkm:1on1/dream_p1 ""
bossbar set wnkm:1on1/dream_p1 style progress
bossbar set wnkm:1on1/dream_p1 color yellow

bossbar remove wnkm:1on1/dream_p2
bossbar add wnkm:1on1/dream_p2 ""
bossbar set wnkm:1on1/dream_p2 style progress
bossbar set wnkm:1on1/dream_p2 color yellow
