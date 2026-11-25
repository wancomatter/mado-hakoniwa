scoreboard players set #autostart counter 0
scoreboard players operation #autostart subcounter = #autostart subcounter2
bossbar remove wnkm:autostart
bossbar add wnkm:autostart ""
bossbar set wnkm:autostart style notched_6
bossbar set wnkm:autostart name [{"text":"ゲーム開始まで: "},{"score":{"name":"#autostart","objective":"subcounter"}}]
bossbar set wnkm:autostart players @a
execute store result bossbar wnkm:autostart value run scoreboard players get #autostart subcounter
execute store result bossbar wnkm:autostart max run scoreboard players get #autostart subcounter
