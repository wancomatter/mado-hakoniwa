# 既に新版で初期化したプレイヤーにも装備一覧の選択欄を作る。
scoreboard players add @s ManaCount 0
scoreboard players add @s ManaRegenAmount 0
scoreboard players add @s page 0
execute unless score @s page matches 1..19 run scoreboard players set @s page 1
scoreboard players operation @s pageChange = @s page
scoreboard players set @s wnkm.catalog 1
