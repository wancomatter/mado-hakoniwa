scoreboard players add #autostart counter 1
execute if score #autostart counter matches 20.. run scoreboard players remove #autostart subcounter 1
execute if score #autostart counter matches 20.. store result bossbar wnkm:autostart value run scoreboard players get #autostart subcounter
execute if score #autostart counter matches 20.. run bossbar set wnkm:autostart name [{"text":"ゲーム開始まで: "},{"score":{"name":"#autostart","objective":"subcounter"}}]
execute if score #autostart counter matches 20.. run bossbar set wnkm:autostart players @a
execute if score #autostart counter matches 20.. run scoreboard players set #autostart counter 0
execute if score #autostart subcounter matches 60 if score #autostart counter matches 0 run function wancomatter:lobby/autostart/mention
execute if score #autostart subcounter matches 30 if score #autostart counter matches 0 run function wancomatter:lobby/autostart/mention
execute if score #autostart subcounter matches 15 if score #autostart counter matches 0 run function wancomatter:lobby/autostart/mention
execute if score #autostart subcounter matches 1..5 if score #autostart counter matches 0 run function wancomatter:lobby/autostart/countdown
execute if score #autostart subcounter matches ..0 run function wancomatter:lobby/monitor/start_now