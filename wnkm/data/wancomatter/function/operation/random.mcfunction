#> wancomatter:operation/random
# data merge storage random: {min:0,max:360}
# random:のstorageにminとmaxを入力して実行する事でその幅内で乱数を生成します

fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}} replace
execute if data storage random: min store result score #wnkm_random Cooldown1 run data get storage random: min 1000
execute if data storage random: max store result score #wnkm_random Cooldown2 run data get storage random: max 1000

data remove block 1024 0 1024 Items[]
loot replace block 1024 0 1024 container.0 loot wancomatter:random/storage

#スコアリセット
scoreboard players reset #wnkm_random

#戻り値
data get block 1024 0 1024 Items[{Slot:0b}].components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/random"}].amount 0.001
