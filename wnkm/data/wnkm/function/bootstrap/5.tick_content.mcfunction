# 旧版の入力収集→ロビー／試合処理の順を維持する。
function wnkm:bootstrap/4.initialize_content
execute if score #lobby counter matches 1 as @a[scores={wnkm.schema=1}] unless score @s wnkm.catalog matches 1 run function wnkm:player/3.initialize_catalog
execute if score #lobby counter matches 1 if entity @a[x=0,y=64,z=0,distance=..44,limit=1] unless score #signs counter matches 1 run function wnkm:lobby/sign/0.install
execute if score #lobby counter matches 1 as @e[type=interaction,tag=wnkm.sign] at @s if data entity @s interaction run function wnkm:lobby/sign/1.use
function wancomatter:skills/tick
function wancomatter:general/tick
