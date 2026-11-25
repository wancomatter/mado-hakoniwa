execute unless score #yamakuzushi counter matches 9.. run summon area_effect_cloud ~ ~ ~ {Duration:160,Tags:["yamakuzushi_AEC","yamakuzushiInit","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute if score #bless counter matches 2.. unless score #yamakuzushi counter matches 10.. run summon area_effect_cloud ~ ~ ~ {Duration:160,Tags:["yamakuzushi_AEC","yamakuzushiInit","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
scoreboard players operation @e[tag=yamakuzushiInit] playerNumber = @s playerNumber
tag @e[tag=yamakuzushiInit] remove yamakuzushiInit
scoreboard players set @a[tag=hurtBy,limit=1] yamakuzushiCT 10
