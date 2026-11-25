# 旧版の入力収集→ロビー／試合処理の順を維持する。
function wnkm:bootstrap/4.initialize_content
execute if score #lobby counter matches 1 as @a[scores={wnkm.schema=1}] unless score @s wnkm.catalog matches 1 run function wnkm:player/3.initialize_catalog
function wancomatter:skills/tick
function wancomatter:general/tick
