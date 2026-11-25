scoreboard players operation #autostart subcounter = @e[tag=monitorUIfocus,tag=monitorUI1-x,limit=1] counter
tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] ゲーム開始までの時間が "},{"score":{"name":"#autostart","objective":"subcounter"}},{"text":" 秒に設定されました。"}]
scoreboard players set #autostart counter 0
bossbar remove wnkm:autostart
bossbar add wnkm:autostart ""
bossbar set wnkm:autostart style notched_6
bossbar set wnkm:autostart name [{"text":"ゲーム開始まで: "},{"score":{"name":"#autostart","objective":"subcounter"}}]
bossbar set wnkm:autostart players @a
execute store result bossbar wnkm:autostart value run scoreboard players get #autostart subcounter
execute store result bossbar wnkm:autostart max run scoreboard players get #autostart subcounter
